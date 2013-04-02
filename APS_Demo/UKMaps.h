//
//  UKMaps.h
//  APS_Demo
//
//  Created by Rob Randell on 13/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface UKMaps : UIViewController <MKMapViewDelegate> {
    
    MKMapView *ukMapView;
    UISegmentedControl *locationController;
    UISegmentedControl *mapTypeController;
    
}

- (IBAction)changeLocation:(id)sender;
- (IBAction)loadGoogleMaps:(UIButton *)sender;
- (IBAction)changeMapType:(id)sender;

@property (nonatomic, retain) IBOutlet MKMapView *ukMapView;
@property (nonatomic, retain) IBOutlet UISegmentedControl *locationController;
@property (nonatomic, retain) IBOutlet UISegmentedControl *mapTypeController;
@property (nonatomic, retain) IBOutlet UITextView *ukTextView;
@property (nonatomic, retain) IBOutlet UILabel *distance;
@property (nonatomic, retain) IBOutlet UIButton *loadMaps;

@end
