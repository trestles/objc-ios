//
//  LTLoginViewController.h
//  ineedhelp
//
//  Created by jonathan twaddell on 11/30/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTLoginViewController : UIViewController

@property NSURLConnection *myConn;


@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;

- (IBAction)pressedLoginBtn:(id)sender;
@end
