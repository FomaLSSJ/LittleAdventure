package types;

typedef PlayFabLogin =
{
	var PlayFabId: String;
	var SessionTicket : String;
	var NewlyCreated: Bool;
	var LastLoginTime: String;
	var SettingsForUser: {
		var GatherDeviceInfo: Bool;
		var NeedsAttribution: Bool;
	}
}

typedef UsersCharacterResult =
{
	var CharacterId: String;
	var CharacterName: String;
	var CharacterType: String;
}

typedef ListUsersCharactersResult =
{
	var code: Int;
	var status: String;
	var data: {
		var Characters: Array<UsersCharacterResult>;
	}
}
