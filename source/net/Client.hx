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
	private var entityToken:String;
	private var entity:Dynamic;
	
	public function new():Void {}
	
	public function setSessionTicket(ticket:String, ?entity:Dynamic, ?entityToken:String):String
	{
		this.sessionTicket = ticket;

		if (entity != null)
		{
			this.entity = entity;
		}
		
		if (entityToken != null)
		{
			this.entityToken = entityToken;
		}

		api.sessionTicket = sessionTicket;
		api.entityToken = entityToken;

		Reg.save.bind("playfab");
		Reg.save.data.ticket = api.sessionTicket;

		if (entity != null)
		{
			Reg.save.data.entity = entity;
		}
		
		if (entityToken != null)
		{
			Reg.save.data.entityToken = api.entityToken;
		}

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
		entityToken = api.entityToken = null;
		entity = null;
		
		Reg.save.bind("playfab");
		Reg.save.data.ticket = api.sessionTicket;
		Reg.save.data.entityToken = api.entityToken;
		Reg.save.data.entity = entity;
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
		
		api.makeRequest("/Client/LoginWithCustomID", params, function (err:Dynamic, res:Dynamic):Void
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

		api.makeRequest("/Client/LoginWithEmailAddress", params, function (err:Dynamic, res:Dynamic):Void
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
				trace(Reflect.field(res.data, "EntityToken"));

				this.sessionTicket = res.data.SessionTicket;
				this.entityToken = res.data.EntityToken.EntityToken;
				this.entity = res.data.EntityToken.Entity;
				api.entityToken = this.entityToken;

				setSessionTicket(this.sessionTicket, this.entity, this.entityToken);
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
		
		api.makeRequest("/Client/GetAllUsersCharacters", params, function (err:Dynamic, res:ListUsersCharactersResult):Void
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
		
		api.makeRequest("/Client/GetCharacterData", params, function (err:Dynamic, res:Dynamic):Void
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
				Reg.phoneDatas = Json.parse(res.data.Data.Phone.Value);
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
		
		api.makeRequest("/Client/GetCharacterStatistics", params, function (err:Dynamic, res:Dynamic):Void
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
		
		api.makeRequest("/Client/UpdateCharacterStatistics", params, function (err:Dynamic, res:Dynamic):Void
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

	public function getFiles(?Callback:Dynamic->Void):Void{
		var params:Dynamic = Json.stringify({
			Entity: this.entity
		});
		
		api.makeRequest("/File/GetFiles", params, function (err:Dynamic, res:Dynamic):Void
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
		}, FILE);
	}

	public function getImage(Url:String, ?Callback:FlxSprite->Void):Void
	{
		return api.getImage(Url, Callback);
	}
}
