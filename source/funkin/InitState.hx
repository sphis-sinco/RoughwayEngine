package funkin;

import funkin.backend.global.SongList;
import funkin.backend.global.WeekList;
import flixel.FlxG;
import flixel.FlxState;

class InitState extends FlxState
{
	static public var soundExt:String = #if web ".mp3" #else ".ogg" #end;

        override function create() {
                super.create();

                // inital parsing
                WeekList.get;
                SongList.get;

		PlayerSettings.init();

		FlxG.save.bind('roughway', 'sphis');

		Highscore.load();

		#if FREEPLAY
		FlxG.switchState(() -> new funkin.menus.FreeplayState());
		#elseif CHARTING
		FlxG.switchState(() -> new funkin.menus.ChartingState());
		#else
                FlxG.switchState(() -> new funkin.menus.TitleState());
                #end
        }
}