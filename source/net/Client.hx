package net;

import haxe.Json;
import flixel.text.FlxText;
import flixel.FlxSprite;

import net.Request;
import types.Typedefs.ListUsersCharactersResult;
import types.Typedefs.UsersCharacterResult;

class Client
{
	private var sessionTicket:String;
	private var api:Request = new Request();
	private var CustomId:String = "8E5BBC913760E5A5";
	private var TitleId:String = "594E";
	
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
		sessionTicket = api.sessionTicket = null;
		
		Reg.save.bind("playfab");
		Reg.save.data.ticket = api.sessionTicket;
		Reg.save.flush();
		Reg.save.close();
	}
	
	public function handleError(res:Dynamic, message:FlxText):Void
	{
		message.text += 'Error code: ${res.code}\n';
		message.text += 'Error: ${res.error}\n';
		message.text += 'Error message: ${res.errorMessage}';
	}

	public function loginWithCustomID(CustomId:String, ?Callback:Dynamic->Void):Void
	{
		if (api.sessionTicket != null) {
			return Callback(true);
		}
		
		var params: Dynamic = Json.stringify({
			CustomId: this.CustomId,
			CreateAccount: false,
			TitleId: this.TitleId
		});
		
		api.makeRequest("LoginWithCustomID", params, function (err:Dynamic, res:Dynamic):Void
		{
			if (err != null)
			{
				if (Callback != null)
				{
					return Callback(err);
				}

				return;
			}

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

	public function LoginWithEmailAddress(Email:String, Password:String, ?Callback:Dynamic->Void):Void
	{
		var params:Dynamic = Json.stringify({
			Email: Email,
			Password: Password,
			TitleId: this.TitleId
		});

		api.makeRequest("LoginWithEmailAddress", params, function (err:Dynamic, res:Dynamic):Void
		{
			if (err != null)
			{
				if (Callback != null)
				{
					return Callback(err);
				}
				
				return;
			}

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
		var params:Dynamic = Json.stringify({
			PlayFabId: "D5353A2CA3572C43"
		});
		
		api.makeRequest("GetAllUsersCharacters", params, function (err:Dynamic, res:ListUsersCharactersResult):Void
		{
			if (err != null)
			{
				if (Callback != null)
				{
					return Callback(err);
				}

				return;
			}

			var characters:Array<UsersCharacterResult> = res.data.Characters;
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
		
		api.makeRequest("GetCharacterData", params, function (err:Dynamic, res:Dynamic):Void
		{
			if (err != null)
			{
				if (Callback != null)
				{
					return Callback(err);
				}

				return;
			}

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
		
		api.makeRequest("GetCharacterStatistics", params, function (err:Dynamic, res:Dynamic):Void
		{
			if (err != null)
			{
				if (Callback != null)
				{
					return Callback(res);
				}

				return;
			}

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
		
		api.makeRequest("UpdateCharacterStatistics", params, function (err:Dynamic, res:Dynamic):Void
		{
			if (err != null)
			{
				if (Callback != null)
				{
					return Callback(err);
				}

				return;
			}

			if (res.code == 200)
			{}
			
			if (Callback != null)
			{
				return Callback(res);
			}
		});
	}

	public function getImage(Url:String, ?Callback:FlxSprite->Void):Void
	{
		return api.getImage(Url, Callback);
	}
}
