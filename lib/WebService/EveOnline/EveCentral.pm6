use v6.c;

class WebService::EveOnline::EveCentral {
	use HTTP::Client;
	use Inline::Perl5;

	constant PREFIX = "http://api.eve-central.com/api/";

	has $!http_client;

	submethod BUILD(:$user_agent) {
		$!http_client = HTTP::Client.new;
		$!http_client.user_agent = $user_agent if $user_agent.defined;
	}

	method new(:$user_agent) {
		self.bless(:$user_agent);
	}

	method !handleRespnse($response, $json) {
		my $p5 = Inline::Perl5.new;

		$p5.use('XML::Hash::XS');

		return $response.success ?? 
			$json.defined ??
				from-json($response.content) !!
				$p5.call('xml2hash', $response.content)
			!!  Nil;		
	}

	method !makeRequest($url, :$json) {
		my $response = $!http_client.get($url);

		return self!handleResponse($response, $json);
	}

	method !postForm($form, :$json) {
		my $response = $form.run;

		return self!handleResponse($response, $json);
	}

	# marketstat
	# 
	# Endpoint: http://api.eve-central.com/api/marketstat
	# Purpose: Retrieve aggregate statistics for the items specified.
	# Allowed methods: GET (parameter list), POST (form data)
	# Return data: XML
	# This API uses parameters in the form of a form submission. The following form parameters are allowed:
	# 
	# Parameter		Usage																Required	Multi
	# hours			Statistics from the last X specified hours.				 			False		False
	#				Defaults to 24.
	# typeid		The type ID of the item you are requesting. I.e., 34 for Tritanium. True		True
	# minQ			The minimum quantity in an order to consider it for the statistics	False		False
	# regionlimit	Restrict statistics to a region. 									False		True
	# usesystem		Restrict statistics to a system.									False		False
	#
	# Examples: http://api.eve-central.com/api/marketstat?typeid=34&typeid=35&regionlimit=10000002 http://api.eve-central.com/api/marketstat?typeid=34&usesystem=30000142

	method marketStat(
		:$typeID!,
		:$hours,
		:$minQ,
		:$regionLimit,
		:$useSystem
	) {
		# cw: -XXX- add sanity checks as done in later methods.
		my $url = "{PREFIX}marketstat?";

		for $typeID.list.kv -> $k, $v {
			# cw: Extra logic necessary because it's the first parameter.
			$url ~= "{$k > 0 ?? '&' !! '' }typeid={$v}";
		}

		if $regionLimit.defined {
			$url ~= "&regionlimit={$_}" for $regionLimit.list;
		}

		$url ~= "&hours={$hours}" if $hours.defined;
		$url ~= "&minQ={$minQ}" if $minQ.defined;
		$url ~= "&usesystem={$useSystem}" if $useSystem.defined;

		return self!makeRequest($url);
	}


	# quicklook
	# 
	# Endpoint: http://api.eve-central.com/api/quicklook
	# Purpose: Retrieve all of the available market orders, including prices, stations, order IDs, volumes, etc.
	# Allowed methods: GET (parameter list), POST (form data)
	# Return type: XML
	# This API uses parameters in the form of a form submission. The following form parameters are allowed:
	# 
	# Parameter		Usage														Required	Multi
	# typeid		The type ID to be queried									True		False
	# sethours		Get orders which have been posted within the last X hours. 	False		False
	#				Defaults to 360
	# regionlimit	Restrict the view to only show from within the specified  	False		True
	#				region IDs.
	# usesystem		Restrict the view to the following system only.				False		False
	# setminQ		Restrict the view to show only orders above the specified 	False		False
	#				region IDs.
	# Examples: http://api.eve-central.com/api/quicklook?typeid=34

	method quickLook(
		:$typeID!,
		:$hours,
		:$minQ,
		:$regionLimit,
		:$useSystem
	) {
		# cw: -XXX- add sanity checks as done in later methods.

		my $url = "{PREFIX}quicklook?typeid={$typeID}";

		if $regionLimit.defined {
			$url ~= "&regionlimit={$_}" for $regionLimit.list;
		}

		$url ~= "&sethours={$hours}" if $hours.defined;
		$url ~= "&setminQ={$minQ}" if $minQ.defined;
		$url ~= "&usesystem={$useSystem}" if $useSystem.defined;

		return self!makeRequest($url);
	}

	# quicklook path
	# 
	# This API is very similar to the above API, but should be considered more experimental.
	# 
	# Endpoint: http://api.eve-central.com/api/quicklook/onpath/from/XXX/to/YYY/fortype/ZZZ
	# Purpose: Retrieve all of the available market orders, including prices, stations, order IDs, volumes, etc., on a given jump path.
	# Allowed methods: GET (parameter list), POST (form data)
	# Return type: XML
	# This API uses parameters in the form of a form submission combined with RESTful 
	# parameters. The following form parameters are allowed, and considered optional:
	# 
	# Parameter	Usage															Required	Multi
	# sethours	Get orders which have been posted within the last X hours. 		False		False
	#			Defaults to 360
	# setminQ	Restrict the view to show only orders above the specified 		False		False
	#			quantity
	#
	# The following positional parameters are allowed:
	# 
	# Parameter	Description
	# XXX	The name or solarsystem ID where to start the path
	# YYY	The name or solarsystem ID where to end the path
	# ZZZ	The numeric type ID for which to show (i.e., 34 for Tritanium)
	# Examples: http://api.eve-central.com/api/quicklook/onpath/from/Jita/to/Amarr/fortype/34
	method quickLookPath(
		:$fromSys,
		:$toSys,
		:$typeID!,
		:$hours,
		:$minQ,
	) {
		my $url = 
			"{PREFIX}quicklook/onpath/from/{$fromSys}/to/{$toSys}/fortype/{$typeID}";
		
		die "Invalid type for parameter <fromSys>. Must be an integer or string." 
			unless $fromSys ~~ Str || $fromSys ~~ Int;

		die "Invalid type for parameter <toSys>. Must be an integer or string."
			unless $toSys ~~ Str || $toSys ~~ Int;

		my $res;
		if $hours.defined || $minQ.defined {
			my $form = $!http_client.post;
			$form.url = $url;

			$form.add-field(:sethours($hours)) if $hours.defined;
			$form.add-field(:setminQ($minQ)) if $minQ.defined;

			return self!postForm($form);
 		} else {
			return self!makeRequest($url);
 		}
	}

	# history
	# 
	# You can get a snapshot of EVE-Central statistics (not game statistics) over time.
	# 
	# Endpoint: http://api.eve-central.com/api/history/for/type/TYPE/LOCALE/IDORNAME/bid/1
	# Allowed methods: GET
	# Return type: JSON
	# URL Position	Description
	# TYPE	The type ID (numeric only) of the item you wish to get statistics for.
	# Locale	The literal text “system” or “region”, meaning to look at per system or per region statistics.
	# id or name	If you specified “system” or “region”, the text or numerical ID of the system or region.
	# bid	Bid = 1 for buy orders, 0 for sell orders
	
	method history(
		:$type!,
		:$locale!,
		:$location,
		:$bid!
	) {
		die "Type parameter must be an integer"
			unless $type ~~ Int;

		die "Locale parameter must be 'system' or 'region'."
			unless $type.lc eq 'system' || $type.lc eq 'region';

		die "Location parameter must be string or int."
			unless $locale ~~ Str || $locale ~~ Int;

		die "Bid parameter must be 1 (buy orders) or 0 (sell orders)"
			unless $bid == 0 || $bid == 1;

		my $url = 
			"{PREFIX}history/for/type/{$type}/{$locale}/{$location}/bid/{$bid}";

		return self!makeRequest($url, :json);
	}
}