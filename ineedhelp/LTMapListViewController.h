//
//  LTMapListViewController.h
//  ineedhelp
//
//  Created by jonathan twaddell on 12/2/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
  inlcude MKMapView but also CoreLocation.framework and MapKit.framework
 
 
*/
#import <MapKit/MKMapView.h>

@interface LTMapListViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
