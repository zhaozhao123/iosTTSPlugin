function speakTTS(str)
{
    cordova.exec(function(winParam){}, function(err){callback('Nothing to do.');}, "OpenEars", "speak", [str]);
}