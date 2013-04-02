//
//  MainMenu.h
//  APS_Demo
//
//  Created by Rob Randell on 22/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwitterMasterView.h"

@interface MainMenu : UIViewController {
    
    IBOutlet UIButton *aboutUsBtn;
    IBOutlet UIButton *ourServicesBtn;
    IBOutlet UIButton *meetTeamBtn;
    IBOutlet UIButton *caseStudiesBtn;
    
    TwitterMasterView *_twitterMasterView;
    UIPopoverController *_twitterPopoverController;
    
}

- (IBAction)displayTweets:(id)sender;

@property (nonatomic, retain) IBOutlet UIButton *aboutUsBtn;
@property (nonatomic, retain) IBOutlet UIButton *ourServicesBtn;
@property (nonatomic, retain) IBOutlet UIButton *meetTeamBtn;
@property (nonatomic, retain) IBOutlet UIButton *caseStudiesBtn;

@property (nonatomic, retain) TwitterMasterView *twitterMasterView;
@property (nonatomic, retain) UIPopoverController *twitterPopoverController;

@property (nonatomic, retain) IBOutlet UILabel *aboutUs;
@property (nonatomic, retain) IBOutlet UILabel *ourServices;
@property (nonatomic, retain) IBOutlet UILabel *meetTeam;
@property (nonatomic, retain) IBOutlet UILabel *caseStudies;

@end
