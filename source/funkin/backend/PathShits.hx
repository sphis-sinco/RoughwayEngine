package funkin.backend;

#if sys
import sys.io.File;
import sys.FileSystem;
#end

import lime.utils.Assets;

class PathShits
{

        public static function getSongVoices(id:String):String
        {
                var _voices = 'assets/songs/${id.toLowerCase()}/${id.toLowerCase()}_Voices' + InitState.soundExt;
                var voices = 'assets/songs/${id.toLowerCase()}/Voices' + InitState.soundExt;
                var _voices_noFolder = 'assets/songs/${id.toLowerCase()}_Voices' + InitState.soundExt;

                if (exists(_voices))
                        return _voices;
                if (exists(voices))
                        return voices;
                if (exists(_voices_noFolder))
                        return _voices_noFolder;

                return null;
        }
        public static function getSongInst(id:String):String
        {
                var _inst = 'assets/songs/${id.toLowerCase()}/${id.toLowerCase()}_Inst' + InitState.soundExt;
                var inst = 'assets/songs/${id.toLowerCase()}/Inst' + InitState.soundExt;
                var _inst_noFolder = 'assets/songs/${id.toLowerCase()}_Inst' + InitState.soundExt;

                if (exists(_inst))
                        return _inst;
                if (exists(inst))
                        return inst;
                if (exists(_inst_noFolder))
                        return _inst_noFolder;

                return null;
        }

        public static function getText(id) {

                #if sys
                return File.getContent(id);
                #end

                return Assets.getText(id);
        }

        public static function exists(id) {

                #if sys
                return FileSystem.exists(id);
                #end

                return Assets.exists(id);
        }
        
}