package funkin.menus.storymode.data;

import lime.utils.Assets;
import json2object.JsonParser;

class WeekData
{
	@:default([])
	public var props:Array<WeekProp>;

	@:default(["tutorial"])
	public var songs:Array<String>;

	@:default("Dummy Week")
	public var weekTitle:String;

	@:jignored
	public var weekID:String;

	public function new(id:String)
	{
		var parser = new JsonParser<WeekData>();

		final jsonPath = "assets/data/weeks/" + id + ".json";
		var json = parser.fromJson(PathShits.getText(jsonPath), jsonPath);

		if (json == null)
		{
			throw "Couldn't get json data for week: " + id;
		}

		this.weekID = id;
		this.props = json.props;
		this.weekTitle = json.weekTitle;
		this.songs = json.songs;
	}

	public function toString():String
	{
		return 'WeekData(id: ${weekID}, title: ${weekTitle}, songs: ${songs}, props: ${[for (prop in props) prop]})';
	}
}
