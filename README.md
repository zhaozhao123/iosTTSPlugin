# Apache Cordova Offline Text-To-Speech (TTS) Plugin for iOS with OpenEars platform.

---

## DESCRIPTION

This plugin is completely dependent on the Apache Cordova (formerly PhoneGap) project, hosted on [GitHub](http://github.com/apache), and OpenEars, a shared-source iOS framework [OpenEars](http://www.politepix.com/openears/).

This plugin comes from one of my project which needs to implement a local TTS functionality without any network support. There are many online TTS plugins based on Google TTS. And there also do exist several offline TTS plugins, but either some of them only support Android, or some of them are not free to use. Finally, I found the OpenEars framework. It's free to use and supports iOS, but it has no PhoneGap plugin yet. Therefore I did some coding to bridge the native iOS with the PhoneGap. This is the first PhoneGap iOS TTS plugin which is free of charge and network support [If you could find one earlier than mine, please let me know : ) ]

## LICENSE

	The MIT License
	
	Copyright (c) 2012 Adobe Systems, inc.
	portions Copyright (c) 2012 Olivier Louvignes
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.

## Introduction of OpenEars

Please refer to [OpenEars](http://www.politepix.com/openears/).

## Manual Installation for iOS

1) Go to OpenEears website to download the frameworks [OpenEars](http://www.politepix.com/openears/). Drag folder "Frameworks" into your app project in Xcode (after you unzip the package downloaded from the website, you will see this folder). Make absolutely sure that in the add dialog "Create groups for any added folders" is selected and NOT "Create folder references for any added folders" because the wrong setting here will prevent your app from working.

2) Add the iOS frameworks AudioToolbox and AVFoundation to your app. In your Xcode, click your project and look for "Linked Frameworks and Libraries" in the "Summary" tab. Click "+" then find these two libraries mentioned above.

3) Drag two files OpenEars.h and OpenEars.m in folder "src/Plugins/" to the same folder "Plugins" in your Xcode. Check the same options mentioned in the step 1).

4) Copy or drag the js file "iosTTSPlugin.js" to your PhoneGap "www" folder and make reference in your .html file to this file.

5) Specify the plugin as a <feature> tag in your Cordova-iOS application's project's config.xml file.

	<feature name="OpenEarsTTS">
	        <param name="ios-package" value="OpenEars" />
	 </feature>

6) If you can't hear the voice in your simulator, please connect your physical device and run again. Sometimes, it doesn't work in my simulator.

## Notes

You can also parse text to the function used in the js file, which can make your app read different texts. I didn't implement interfaces that adjust speed, pitch and so on. If you are interested in them, please try to realize them followed the instructions provided by OpenEars. I can't guarantee I have enough time to implement them in the future versions cause I'm looking for my new job now. This plugin is built on the free OpenEears platform, so the voice sounds very robotic. If you want to make the voice sound like human, please refer to this non-free one--NeatSpeech: Better Voices for OpenEars.


## Acknowledgment

My project is sponsored by Prof. Stephen Fickas, Computer and Information Science Department, University of Oregon. Huge thanks to him for his authorizing me to release this plugin in free use.
