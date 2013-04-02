//
//  Locations.h
//  APS_Demo
//
//  Created by Rob Randell on 24/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Locations : UIViewController <UIPopoverControllerDelegate> {
    
}

@property (nonatomic, retain) IBOutlet UILabel *pageTitle;
@property (nonatomic, retain) IBOutlet UILabel *pageSubtitle;

@property (nonatomic, retain) IBOutlet UILabel *multipleClients;
@property (nonatomic, retain) IBOutlet UILabel *onlineTech;
@property (nonatomic, retain) IBOutlet UILabel *countriesServiced;

@property (nonatomic, retain) IBOutlet UILabel *locations;
@property (nonatomic, retain) IBOutlet UILabel *sitesOpened;
@property (nonatomic, retain) IBOutlet UILabel *globalSupply;

@property (nonatomic, retain) IBOutlet UIButton *ukPopBtn;
@property (nonatomic, retain) IBOutlet UIButton *nlPopBtn;
@property (nonatomic, retain) IBOutlet UIButton *usPopBtn;

@property (nonatomic, retain) UIPopoverController *popoverController;

@end
