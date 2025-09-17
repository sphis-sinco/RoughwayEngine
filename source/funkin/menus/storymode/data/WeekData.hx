package funkin.menus.storymode.data;

import json2object.JsonParser;

class WeekData
{
        @:default([])
        public var props:Array<WeekProp> = [];

        @:default("Dummy Week")
        public var weekTitle:String;
        
        @:jignored
        public var weekID:String;

        public function new(id:String) {
                var parser = new JsonParser<WeekData>();


		final jsonPath = "assets/data/levels/"+id+".json";
		var json = parser.fromJson(Assets.getText(jsonPath), jsonPath);
        }
        
}