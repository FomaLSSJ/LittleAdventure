package;

class Helper
{
	public function new():Void
	{
		trace("Helper created");
	}

	//TODO Тестовая функция для проверки Reflect. Можно удалить в песду.
	public function calc(?f:Int = 1, ?s:Int = 1):Void
	{
		trace(f + s);
	}
	
	public function addItem(name:String):Void
	{
		Reg.inv.addItem(Reg.itemsList.get(name));
	}
}