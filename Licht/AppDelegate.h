//
//  AppDelegate.h
//  Licht
//
//  Created by Dirk Breuer on 06.02.14.
//  Copyright (c) 2014 Home Office Cologne. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

extern NSString *const FirestarBaseUrl;
extern NSString *const LightOnCommand;
extern NSString *const LightOffCommand;

@property (assign) IBOutlet NSWindow *window;
@property (assign) NSURLConnection *connection;

- (IBAction)lightOn:(id)sender;
- (IBAction)lightOff:(id)sender;

- (void)toggleLight:(NSString *)onOrOff;

@end
