//
//  Services.h
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Services : UIViewController {
    
    IBOutlet UIButton *crossMediaComms;
    IBOutlet UIButton *creativeServices;
    IBOutlet UIButton *itSolutions;
    IBOutlet UIButton *dataServices;
    IBOutlet UIButton *consultancy;
    IBOutlet UIButton *printManagement;
    IBOutlet UIButton *retailServices;
    IBOutlet UIButton *logistics;
}

@property (nonatomic, retain) UIButton *crossMediaComms;
@property (nonatomic, retain) UIButton *creativeServices;
@property (nonatomic, retain) UIButton *itSolutions;
@property (nonatomic, retain) UIButton *dataServices;
@property (nonatomic, retain) UIButton *consultancy;
@property (nonatomic, retain) UIButton *printManagement;
@property (nonatomic, retain) UIButton *retailServices;
@property (nonatomic, retain) UIButton *logistics;

@property (nonatomic, retain) IBOutlet UILabel *crossMediaCommsLabel;
@property (nonatomic, retain) IBOutlet UILabel *creativeServicesLabel;
@property (nonatomic, retain) IBOutlet UILabel *itSolutionsLabel;
@property (nonatomic, retain) IBOutlet UILabel *dataServicesLabel;
@property (nonatomic, retain) IBOutlet UILabel *consultancyLabel;
@property (nonatomic, retain) IBOutlet UILabel *printManagementLabel;
@property (nonatomic, retain) IBOutlet UILabel *retailServicesLabel;
@property (nonatomic, retain) IBOutlet UILabel *logisticsLabel;

@end
