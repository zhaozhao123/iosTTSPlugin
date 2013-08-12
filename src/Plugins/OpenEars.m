//  OpenEars.m
//
//  Copyright (c) 2013 University of Oregon.  All rights
 // reserved.
//  @author Zhao Zhao, University of Oregon <zhaozhao123@gmail.com>
//  You are free to modify or add your functions. Please keep this information.
//
//

#import "OpenEars.h"
#import <Cordova/CDV.h>

@implementation OpenEars
@synthesize fliteController;
@synthesize slt;
- (void) speak:(CDVInvokedUrlCommand*) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* param = [command.arguments objectAtIndex:0];
    if (param != nil && [param length] > 0)
    {
        [self.fliteController say:param withVoice:self.slt];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @"OK"];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
- (FliteController *)fliteController {
	if (fliteController == nil) {
		fliteController = [[FliteController alloc] init];
	}
	return fliteController;
}

- (Slt *)slt {
	if (slt == nil) {
		slt = [[Slt alloc] init];
	}
	return slt;
}
@end
