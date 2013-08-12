//  OpenEars.h
//
//  Copyright (c) 2013 University of Oregon.  All rights
 // reserved.
//  @author Zhao Zhao, University of Oregon <zhaozhao123@gmail.com>
//  You are free to modify or add your functions. Please keep this information.
//
//
#import <Slt/Slt.h>
#import <OpenEars/FliteController.h>
#import <Cordova/CDV.h>

@interface OpenEars : CDVPlugin
{
    FliteController *fliteController;
    Slt *slt;
}
@property (strong, nonatomic) FliteController *fliteController;
@property (strong, nonatomic) Slt *slt;
- (void) speak : (CDVInvokedUrlCommand*)command;

@end
