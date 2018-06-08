package;

import haxe.Json;

class Client
{
	private var sessionTicket: String;
	private var api: Request = Reg.request;
	
	public function new():Void {}
	
	public function setSessionTicket(ticket:String):String
	{
		sessionTicket = ticket;
		api.sessionTicket = sessionTicket;

		Reg.save.bind("playfab");
		Reg.save.data.ticket = api.sessionTicket;
		Reg.save.flush();
		Reg.save.close();
		
		return api.sessionTicket;
	}
	
	public function getSessionTicket():String
	{
		return api.sessionTicket;
	}
	
	public function clearSessionTicket():Void
	{
		sessionTicket = null;
		api.sessionTicket = sessionTicket;
		
		Reg.save.bind("playfab");
		Reg.save.data.ticket = api.sessionTicket;
		Reg.save.flush();
		Reg.save.close();
	}
	
	public function loginWithCustomID(?Callback:Dynamic->Void):Void
	{
		if (api.sessionTicket != null) {
			return Callback(true);
		}
		
		var params: Dynamic = Json.stringify({
			CustomId: "8E5BBC913760E5A5",
			CreateAccount: false,
			TitleId: "594E"
		});
		
		api.makeRequest("LoginWithCustomID", params, function (res:Dynamic):Void
		{
			if (res.code == 200) {
				trace(Reflect.field(res.data, "SessionTicket"));
				setSessionTicket(res.data.SessionTicket);
			}
			
			if (Callback != null)
			{
				return Callback(res);
			}
		});
	}
	
	public function getAllUsersCharacters(?Callback:Dynamic->Void):Void
	{
		var params: Dynamic = Json.stringify({
			PlayFabId: "D5353A2CA3572C43"
		});
		
		api.makeRequest("GetAllUsersCharacters", params, function (res:Typedefs.ListUsersCharactersResult):Void
		{
			var characters: Array<Typedefs.UsersCharacterResult> = res.data.Characters;
			for (character in characters)
			{
				if (character.CharacterId == "6C62A81984726788")
				{
					trace(character.CharacterName);
					Reg.name = character.CharacterName;
				}
			}
			
			if (Callback != null)
			{
				return Callback(res);
			}
		});
	}
	
	public function getCharacterData(?Callback:Dynamic->Void):Void
	{
		var params: Dynamic = Json.stringify({
			PlayFabId: "D5353A2CA3572C43",
			CharacterId: "6C62A81984726788"
		});
		
		api.makeRequest("GetCharacterData", params, function (res:Dynamic):Void
		{
			if (res.code == 200)
			{
				trace(Json.parse(res.data.Data.Main.Value));
			}
			
			if (Callback != null)
			{
				return Callback(res);
			}
		});
	}
	
	public function getCharacterStatistics(?Callback:Dynamic->Void):Void
	{
		var params:Dynamic = Json.stringify({
			CharacterId: "6C62A81984726788"
		});
		
		api.makeRequest("GetCharacterStatistics", params, function (res:Dynamic):Void
		{
			if (res.code == 200)
			{
				trace(res.data.CharacterStatistics);
				Reg.timer.offset = res.data.CharacterStatistics.Timer;
			}
			
			if (Callback != null)
			{
				return Callback(res);
			}
		});
	}
	
	public function updateCharacterStatistics(?Callback:Dynamic->Void):Void
	{
		var params:Dynamic = Json.stringify({
			CharacterId: "6C62A81984726788",
			CharacterStatistics: {
				Timer: Reg.timer.current
			}
		});
		
		api.makeRequest("UpdateCharacterStatistics", params, function (res:Dynamic):Void
		{
			if (res.code == 200)
			{}
			
			if (Callback != null)
			{
				return Callback(res);
			}
		});
	}
}
