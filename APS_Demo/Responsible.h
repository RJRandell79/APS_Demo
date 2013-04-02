//
//  Responsible.h
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Responsible : UIViewController {
    
    IBOutlet UIWebView *marketPlace;
    IBOutlet UIWebView *workPlace;
    IBOutlet UIWebView *community;
    IBOutlet UIWebView *environment;
}

@property (nonatomic, retain) IBOutlet UIWebView *marketPlace;
@property (nonatomic, retain) IBOutlet UIWebView *workPlace;
@property (nonatomic, retain) IBOutlet UIWebView *community;
@property (nonatomic, retain) IBOutlet UIWebView *environment;

@property (nonatomic, retain) IBOutlet UILabel *pageTitle;
@property (nonatomic, retain) IBOutlet UILabel *pageSubtitle;

@end
