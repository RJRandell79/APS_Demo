//
//  AboutUs.h
//  APS_Demo
//
//  Created by Rob Randell on 23/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface AboutUs : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *pageTitle;

@property (nonatomic, retain) IBOutlet UILabel *keyFacts;
@property (nonatomic, retain) IBOutlet UILabel *established;
@property (nonatomic, retain) IBOutlet UILabel *finaciallyStable;
@property (nonatomic, retain) IBOutlet UILabel *employeesWorldwide;
@property (nonatomic, retain) IBOutlet UILabel *multiService;
@property (nonatomic, retain) IBOutlet UILabel *hubSatellite;
@property (nonatomic, retain) IBOutlet UILabel *distService;
@property (nonatomic, retain) IBOutlet UILabel *leadingTech;
@property (nonatomic, retain) IBOutlet UILabel *brandReflects;

@property (nonatomic, retain) IBOutlet UIImageView *videoFrame;

@property (nonatomic, retain) IBOutlet UILabel *solutionsProvider;
@property (nonatomic, retain) IBOutlet UILabel *firstPara;
@property (nonatomic, retain) IBOutlet UILabel *secondPara;

@property (nonatomic, retain) MPMoviePlayerController *moviePlayer;

- (IBAction)playMovie:(id)sender;


@end
