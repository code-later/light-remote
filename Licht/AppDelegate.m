//
//  AppDelegate.m
//  Licht
//
//  Created by Dirk Breuer on 06.02.14.
//  Copyright (c) 2014 Home Office Cologne. All rights reserved.
//

#import "AppDelegate.h"

NSString *const FirestarUrl = @"http://192.168.212.30/ecmd?$0D-";
NSString *const LightOnCommand = @"on";
NSString *const LightOffCommand = @"off";

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)lightOn:(id)sender {
    NSLog(@"Switching light ON");
    
    [self toggleLight:LightOnCommand];
}

- (IBAction)lightOff:(id)sender {
    NSLog(@"Switching light OFF");

    [self toggleLight:LightOffCommand];
}

- (void)toggleLight:(NSString *)onOrOff {
    NSURL *url = [NSURL URLWithString:[FirestarUrl stringByAppendingString:onOrOff]];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:Nil startImmediately:true];
    
    self.connection = connection;
}
@end
