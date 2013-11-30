//
//  LTDetailViewController.m
//  ineedhelp
//
//  Created by jonathan twaddell on 11/30/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import "LTDetailViewController.h"

@interface LTDetailViewController ()

@end

@implementation LTDetailViewController

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
	NSLog(@"here i am in viewDidLoad with %@", self.person[@"mainTitleKey"]);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
