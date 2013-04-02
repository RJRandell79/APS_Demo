//
//  CreativeServices.h
//  APS_Demo
//
//  Created by Rob Randell on 26/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreativeServices : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *pageTitle;

@property (nonatomic, retain) IBOutlet UITextView *desc;

@property (nonatomic, retain) IBOutlet UILabel *popoverLabel1;
@property (nonatomic, retain) IBOutlet UILabel *popoverLabel2;
@property (nonatomic, retain) IBOutlet UILabel *popoverLabel3;
@property (nonatomic, retain) IBOutlet UILabel *popoverLabel4;

@property (nonatomic, retain) IBOutlet UIButton *popoverButton1;
@property (nonatomic, retain) IBOutlet UIButton *popoverButton2;
@property (nonatomic, retain) IBOutlet UIButton *popoverButton3;
@property (nonatomic, retain) IBOutlet UIButton *popoverButton4;

//- (IBAction)backToMenu:(id)sender;

@end
