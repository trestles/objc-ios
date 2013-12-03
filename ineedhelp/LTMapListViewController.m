//
//  LTMapListViewController.m
//  ineedhelp
//
//  Created by jonathan twaddell on 12/2/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import "LTMapListViewController.h"

@interface LTMapListViewController ()

@end

@implementation LTMapListViewController

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
 */

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //
    /*
     
    From Apple Docs:
     Because it is a view, you can manipulate a map view in the same ways you manipulate other views. You can change its size and position in your view hierarchy, you can configure its autoresizing behaviors, and you can add subviews to it. Unlike a view, you never handle touch events directly in a map view. The map view itself is an opaque container for a complex view hierarchy that handles the display of map-related data and all interactions with that data. Any subviews you add to the map view retain the position specified by their frame property and do not scroll with the map contents. If you want content to remain fixed relative to a specific map coordinate (and thus scroll with the map itself), you must use annotations or overlays as described in “Annotating Maps.”
     
     New maps are configured to accept user interactions and display map data only. You can configure the map to display satellite imagery or a mixture of satellite and map data by changing the Type attribute of the map in Interface Builder or changing the value in the mapType property. If you want to limit user interactions, you can change the values in the zoomEnabled and scrollEnabled properties as well. If you want to respond to user interactions, you should do so using a delegate as described in “Responding to User Interactions with a Map.”
     

     
    */
    
    
  CGRect myRect=CGRectMake(30.0f, 10.0f, 200.0f, 200.0f);
  self.mapView.frame = myRect;
  
    /*
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(30)-[mapView(200)]" options:0 metrics:nil views:@{@"mapView" : self.mapView}]];
     [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(30)-[mapView(200)]" options:0 metrics:nil views:@{@"mapView" : self.mapView}]];
    */

    /*
    self.mapView = [[MKMapView alloc] initWithFrame:myRect];
    [self.view addSubview:self.mapView];
     */
   // self.mapView.autoresizingMask = self.view.autoresizingMask;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
