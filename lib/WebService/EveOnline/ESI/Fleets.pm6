use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Fleets {
	also is WebService::EveOnline::ESI::Base;

	has $!alliance_id;
	has $!datasource;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/fleets/");
	}

	method character-id {
		self.sso.characterID;
	}

	method createSquad($fid, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;

		self.checkScope('esi-fleets.write_fleet.v1');
		self.postByPrefix("{ $fid }/squads/", :$datasource);
	}

	method createWing($fid, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;

		self.checkScope('esi-fleets.write_fleet.v1');
		self.postByPrefix("{ $fid }/wings/", :$datasource);
	}

	method deleteMembers($fid, $member_id, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die "<memberID> must be an Integer" unless $member_id ~~ Int;

		self.checkScope('esi-fleets.write_fleet.v1');
		self.requestByPrefix(
			"{ $fid }/members/{ $member_id }/",
			:method(RequestMethod::DELETE),
			:$datasource
		);
	}

	method deleteSquads($fid, $squad_id, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die "<squadID> must be an integer" unless $squad_id ~~ Int;

		self.checkScope('esi-fleets.write_fleet.v1');
		self.requestByPrefix(
			"{ $fid }/squads/{ $squad_id }/",
			:method(RequestMethod::DELETE),
			:$datasource
		);
	}

	method deleteWings($fid, $wing_id, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die "<wingID> must be an Integer" unless $fid ~~ Int;

		self.checkScope('esi-fleets.write_fleet.v1');
		self.requestByPrefix(
			"{ $fid }/wings/{ $squad_id }/",
			:method(RequestMethod::DELETE),
			:$datasource
		);
	}

	method getInformation($fid, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;

		self.checkScope('esi-fleets.read_fleet.v1');
		self.requestByPrefix("{ $fid }/", :$datasource);
	}

	method getMembers($fid, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;

		self.checkScope('esi-fleets.read_fleet.v1');
		self.requestByPrefix("{ $fid }/members/", :$datasource);
	}

	method getWings(:$datasource) {
		self.checkScope('esi-fleets.read_fleet.v1');
		self.requestByPrefix("{ $fid }/wings/", :$datasource);
	}

	method moveMember($fid, $member_id, $movement, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die "<movement> must be a Hash value" unless $movement ~~ Hash;

		die qq:to/DIE/;
<movement> role must be one of:
	'fleet_commander', 'wing_commander', 'squad_commander', or 'squad_member'
DIE
		unless $movement<role> eq <
			fleet_commander
			wing_commander
			squad_commander
			squad_member
		>.any()

		die qq:to/DIE/;
Invalid movement: If moving to Fleet Commander, no squad or wing ID should
be specified.
DIE
			if
				$movement<role> eq 'fleet_commander' &&
				$movement<wing_id>.defined &&
				$movement<squad_id>.defined;

		die qq:to/DIE/;
Invalid movement: If pmoving to Wing Commander, only the wing_id should be
specified.
DIE
			if $movement<role> eq 'wing_commander' &&
				($movement<squad_id>.defined || !$movement<wing_id>.defined);

		die qq:to/DIE/;
Invalid movement: If moving to Squad Commander or Squad Member, both wing_id
AND squad_id should be specified.
DIE
			unless
				$movement<role> ~~ /^squad/ &&
				$movement<wing_id>.defined  &&
				$movement<squad_id>.defined;

		self.checkScope('esi-fleets.write_fleet.v1');
		self.putByPrefix("{ $fid }/members/{ $member_id }/");
	}

	method updateInformation($fid, $settings, :$datasource) {
		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die qq:to/DIE/;
<settings> must be a Hash that contains the following information:
	 is_free_move: [Boolean] Sets free move ability within the fleet
	 motd: [Str] Sets the fleet's Message of the Day
 DIE
 		unless
			$settings ~~ Hash &&
			($settings<is_free_move>.Int == (0, 1).any || $setttings<is_free_move> ~~ Bool) &&
			$settings<motd> ~~ Str

		self.checkScope('esi-fleets.write_fleet.v1');
		self.postBodyByPrefix(
			"{ $fid }/",
			to-json($settings),
			:$datasource
		);
	}

	method renameSquad($fid, $squad_id, $rename, :$datasource) {
		my $name_param;

		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die "<squadID> must be an Integer" unless $squad_id ~~ Int;

		given $rename {
				when Hash {
					die "%rename<name> must contain a string."
						unless $rename<name> ~~ Str;
					$name_param = $name;
				}

				when Str {
					$name_param = {
						name => $rename;
					};
				}

				default {
					die qq:to/DIE/;
<rename> parameter must either be a Hash containing a name/Str pair, or a
string value that contains the new name of the squad.
DIE
				}
		}

		self.checkScope('esi-fleets.write_fleet.v1');
		self.postBodyByPrefix(
			"{ $fid }/squads/{ $squad_id }/",
			to-json($name_param),
			:$datasource
		);
	}

	method renameWing($fid, $wing_id, $rename, :$datasource) {
		my $name_param;

		die "<fleetID> must be an Integer" unless $fid ~~ Int;
		die "<wingID> must be an Integer" unless $wing_id ~~ Int;

		given $rename {
				when Hash {
					die "%rename<name> must contain a string."
						unless $rename<name> ~~ Str;
					$name_param = $name;
				}

				when Str {
					$name_param = {
						name => $rename;
					};
				}

				default {
					die qq:to/DIE/;
<rename> parameter must either be a Hash containing a name/Str pair, or a
string value that contains the new name of the squad.
DIE
				}
		}

		self.checkScope('esi-fleets.write_fleet.v1');
		self.postBodyByPrefix(
			"{ $fid }/wings/{ $wing_id }/",
			to-json($name_param),
			:$datasource
		);
	}
}
