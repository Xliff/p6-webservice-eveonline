use v6.c;

class WebService::EveOnline::XML::Character {
	also is WebService::EveOnline::XML::Base;

	method new(
		:$characterID,
		:$apiKey,
		:user_agent
	) {
		self.bless(:$characterID, :$apiKey, :$user_agent);
	}
}