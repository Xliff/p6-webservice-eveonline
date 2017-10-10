use v6.c;

use WebService::EveOnline::ESI::Base;

# XXX XXX XXX--- TODO ---
#  cw: ALL methods in this module must be adjusted to use the POST method.
# XXX XXX XXX

class WebService::EveOnline::ESI::UI {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/ui/");
	}

	method setWaypoint($dest, :$datasource, :$add_to_beginning, :$clear_other_waypoints) {
		self.checkScope('esi-ui.write_waypoint.v1');

		die "<dest> parameter must be an Integer"
			unless $dest ~~ Int;

		die "<add_to_beginning> parameter must evaluate to 'true' or 'false'"
			unless 	$add_to_beginning.Bool ~~ Bool;

		die "<clear_other_waypoints> parameter must evaluate to 'true' or 'false'"
			unless $clear_other_waypoints.Bool ~~ Bool;

		my %extras = {
			destination_id			  => $dest,
			add_to_beginning      => $add_to_beginning.Bool,
			clear_other_waypoints => $clear_other_waypoints.Bool,
		};

		self.requestByPrefix('autopilot/waypoint/', :$datasource, |%extras);
	}

	method openContract($id, :$datasource) {
		self.checkScope('esi-ui.open_window.v1');

		die '<id> parameter must be an Integer'
			unless $contract_id ~~ Int;

		self.requestByPrefix('openwindow/contract/', :$datasource, :contract_id($id));
	}

	method openInfoWin($id, :$datasource) {
		self.checkScope('esi-ui.open_window.v1');

		die '<id> parameter must be an Integer representing a character, corporation or alliance.'
			unless $id ~~ Int;

		self.requestByPrefix('openwindow/contract/', :$datasource, :targer_id($id));
	}

	method openMarketWin($id, :$datasource) {
		self.checkScope('esi-ui.open_window.v1');

		die '<id> parameter must be an Integer representing an item.'
			unless $id ~~ Int;

		self.requestByPrefix('openwindow/contract/', :$datasource, :type_id($id));
	}

	method openNewMailWin(%new_mail, :$datasource) {
		self.checkScope('esi-ui.open_window.v1');

		my $complete = [&&](
			%new_mail<body>.defined,
			%new_mail<recipients>.defined,
			%new_mail<subject>.defined,
			%new_mail<recipients>.Array.all ~~ Int,
			[||](
				!%new_mail<to_corp_or_alliance_id>.defined,
				%new_mail<to_corp_or_alliance_id>.Bool ~~ Bool
			),
			[||](
				!%new_mail<to_mailing_list_id.defined,
				%new_mail<to_mailing_list_id>.Bool ~~ Bool
			)
		);

		die(q:to/ERROR/) unless $complete;
			<new_mail> parameter must be a hash containing the following items:
				<body>                    => String data
				<subject>                 => String data
				<recipients>              => Integers representing a user, corporation, alliance or mailing list
				<to_corp_or_alliance_id>  => Boolean indicating whether the mail destination is to a corporation or an alliance.
				<to_mailing_list_id>      => Boolean indicationg that the mail destination is a mailing list
		ERROR

		my %extras = (
			ENCODING								  => 'JSON',
		  DATA											=> {
				new_mail									=> {
					body 				            => %new_mail<body>,
					subject                 => %new_mail<subject>,
					recipients            	=> %new_mail<recipients>,
					to_corp_or_alliance_id  => %new_mail<to_corp_or_alliance_id> // +False,
					to_mailing_list_id      => %new_mail<to_mailing_list_id // +False
				},
			}
		};

		self.post('openwindow/newmail', :$datasource, |%extras)
	}






}
