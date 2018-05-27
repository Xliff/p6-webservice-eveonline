use v6.c;

use WebService::EveOnline::ESI::Base;

class WebService::EveOnline::ESI::Universe {
	also is WebService::EveOnline::ESI::Base;

	submethod TWEAK {
		self.appendPrefix("/{ $!type }/universe/");
	}

	method getBloodlines(:$datasource, :$language) {
		self.getRequestByPrefix('bloodlines/', :$datasource, :$language);
	}

	method getCategories(:$datasource) {
		self.getRequestByPrefix('bloodlines/', :$datasource);
	}

	method getCategory($id, :$datasource, :$language) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("categories/{ $id }", :$datasource, :$language);
	}

	method getConstellations(:$datasource) {
		self.getRequestByPrefix('constellations/', :$datasource);
	}

	method getConstellation($id, :$datasource, :$language) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("constellations/{ $id }", :$datasource, :$language);
	}

	method getFactions(:$datasource) {
		self.getRequestByPrefix('factions/', :$datasource);
	}

	method getGraphics(:$datasource) {
		self.getRequestByPrefix('graphics/', :$datasource);
	}

	method getGraphic($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("graphics/{ $id }", :$datasource);
	}

	method getGroups(:$datasource) {
		self.getRequestByPrefix('groups/', :$datasource);
	}

	method getGroup($id, :$datasource, :$language) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("groups/{ $id }", :$datasource, :$language);
	}

	method getMoon($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("moons/{ $id }", :$datasource);
	}

	method getNames(:$datasource) {
		self.getRequestByPrefix('names/', :$datasource);
	}

	method getPlanet($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("planets/{ $id }", :$datasource);
	}

	method getRaces(:$datasource, :$language) {
		self.getRequestByPrefix('names/', :$datasource, :$language);
	}

	method getRegions(:$datasource) {
		self.getRequestByPrefix('regions/', :$datasource);
	}

	method getRegion($id, :$datasource, :$language) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("regions/{ $id }", :$datasource, :$language);
	}

	method getStargate($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("stargates/{ $id }", :$datasource);
	}

	method getStar($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("stars/{ $id }", :$datasource);
	}

	method getStation($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("stars/{ $id }", :$datasource);
	}

	method getStructures(:$datasource) {
		self.getRequestByPrefix('structures/');
	}

	method getStructure($id, :$datasource) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("registructures/{ $id }", :$datasource);
	}

	method getSystemJumps(:$datasource) {
		self.getRequestByPrefix('system_jumps/', :$datasource);
	}

	method getSystemKills(:$datasource) {
		self.getRequestByPrefix('system_kills/', :$datasource);
	}

	method getSystems(:$datasource) {
		self.getRequestByPrefix('systems/', :$datasource);
	}

	method getSystem($id, :$datasource, :$language) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("systems/{ $id }", :$datasource, :$language);
	}

	method getTypes(:$datasource) {
		self.getRequestByPrefix('types/', :$datasource);
	}

	method getType($id, :$datasource, :$language) {
		die "Invalid ID! ID must resolve to an integer!" unless $id ~~ Int;
		self.getRequestByPrefix("types/{ $id }", :$datasource, :$language);
	}

}