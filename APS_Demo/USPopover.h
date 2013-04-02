//
//  USPopover.h
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface USPopover : UIViewController <MKMapViewDelegate> {
    
    MKMapView *usMapView;
    
}

@property (nonatomic, retain) IBOutlet UITextView *usTextView;
@property (nonatomic, retain) IBOutlet MKMapView *usMapView;

@end
