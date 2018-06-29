use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Routes {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ self.type }/route/");
	}

	method get($orig, $dest, :@avoid, :@connections, :$flag) {
		self.getRoute($orig, $dest, :$datasource, :@avoid, :@connections, :$flag);
	}
	method getRoute($orig, $dest, :$datasource, :@avoid, :@connections, :$flag) {
		die "Invalid <flag> value specidied! Must be one of 'shortest', 'secure', or 'insecure'"
			unless $flag == <shortest secure insecure>.any;

		# cw: --- TODO ---
		# Convert all die calls into exceptions.

		# cw: System validation will be the responsibility of the caller, unless users
		#     request it as a feature.
		die "<avoid> parameter must be a list of ints!"
			unless @avoid.all ~~ Int;

		die "<connections> parameter must be a list of ints!"
			unless @connections.all ~~ Int;

		my %extras = {
			flag 				=> $flag,
			avoid				=> @avoid.join(','),
			connections => @conenctions.join(','),
		};

		self.requestByPrefix("{ $orig }/{ $dest }/", :$datasource, |%extras);
	}

}
