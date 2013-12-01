//
//  LTLoginViewController.m
//  ineedhelp
//
//  Created by jonathan twaddell on 11/30/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import "LTLoginViewController.h"

@interface LTLoginViewController ()

@end

@implementation LTLoginViewController
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pressedLoginBtn:(id)sender {
    NSLog(@"you pressed the login Button name: %@ and pwd: %@", self.nameTextField.text, self.pwdTextField.text);

}
@end
