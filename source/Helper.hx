package;

class Helper
{
	public function new():Void
	{
		trace("Helper created");
	}

	public function calc(?f:Int = 1, ?s:Int = 1):Void
	{
		trace(f + s);
	}
	
	public function addItem(name:String):Void
	{
		Reg.inv.addItem(Reg.itemsList.get(name));
	}
	
	public function endDialog():Void
	{
		Reg.gui.toggleDialog();
		Reg.triggers.set('is_dialog', false);
	}
}