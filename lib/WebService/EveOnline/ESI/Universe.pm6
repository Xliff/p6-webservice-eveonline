use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Universe {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ self.type }/universe/");
	}

	method new(:$sso) {
		self.bless(:$sso);
	}

	method getBloodlines(:$datasource, :$language) {
		self.requestByPrefix('bloodlines/', :$datasource, :$language);
	}

	method getCategories(:$datasource) {
		self.requestByPrefix('bloodlines/', :$datasource);
	}

	method getCategory($id, :$datasource, :$language) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("categories/{ $id }/", :$datasource, :$language);
	}

	method getConstellations(:$datasource) {
		self.requestByPrefix('constellations/', :$datasource);
	}

	method getConstellation($id, :$datasource, :$language) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("constellations/{ $id }/", :$datasource, :$language);
	}

	method getFactions(:$datasource) {
		self.requestByPrefix('factions/', :$datasource);
	}

	method getGraphics(:$datasource) {
		self.requestByPrefix('graphics/', :$datasource);
	}

	method getGraphic($id, :$datasource) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("graphics/{ $id }/", :$datasource);
	}

	method getGroups(:$datasource) {
		self.requestByPrefix('groups/', :$datasource);
	}

	method getGroup($id, :$datasource, :$language) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("groups/{ $id }/", :$datasource, :$language);
	}

	method getIDs(@names, :$datasource) {
		die "<names> must be a list of strings" unless @names.all() ~~ Str;

		self.postBodyByPrefix(
			"ids/",
			to-json(@names),
			:$datasource
		);
	}

	method getMoon($id, :$datasource) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("moons/{ $id }/", :$datasource);
	}

	method getNames(@ids, :$datasource) {
		die "<ids> must be a list of Integers!" unless @ids.all() ~~ Int;

		self.postBodyByPrefix(
			'names/',
			to-json(@ids),
			:$datasource
		);
	}

	method getPlanet($id, :$datasource) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("planets/{ $id }", :$datasource);
	}

	method getRaces(:$datasource, :$language) {
		self.requestByPrefix('names/', :$datasource, :$language);
	}

	method getRegions(:$datasource) {
		self.requestByPrefix('regions/', :$datasource);
	}

	method getRegion($id, :$datasource, :$language) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("regions/{ $id }/", :$datasource, :$language);
	}

	method getSchematics($id, :$datasource) {
		die "<schematicID> must be an Integer." unless $id ~~ Int;
		self.requestByPrefix("schematics/{ $id }/", :$datasource);
	}

	method getStargate($id, :$datasource) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("stargates/{ $id }/", :$datasource);
	}

	method getStar($id, :$datasource) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("stars/{ $id }/", :$datasource);
	}

	method getStation($id, :$datasource) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("stars/{ $id }/", :$datasource);
	}

	method getStructures(:$datasource) {
		self.requestByPrefix('structures/', :$datasource);
	}

	method getStructure($id, :$datasource) {
		die "No authorization has been provided for this method."
			unless self.sso.defined;

		die "ID must resolve to an integer!" unless $id ~~ Int;

		self.checkScope('esi-universe.read_structures.v1');
		self.requestByPrefix("structures/{ $id }/", :$datasource);
	}

	method getSystemJumps(:$datasource) {
		self.requestByPrefix('system_jumps/', :$datasource);
	}

	method getSystemKills(:$datasource) {
		self.requestByPrefix('system_kills/', :$datasource);
	}

	method getSystems(:$datasource) {
		self.requestByPrefix('systems/', :$datasource);
	}

	method getSystem($id, :$datasource, :$language) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("systems/{ $id }/", :$datasource, :$language);
	}

	method getTypes(:$datasource) {
		self.requestByPrefix('types/', :$datasource);
	}

	method getType($id, :$datasource, :$language) {
		die "ID must resolve to an integer!" unless $id ~~ Int;
		self.requestByPrefix("types/{ $id }/", :$datasource, :$language);
	}

}
