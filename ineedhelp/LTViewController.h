//
//  LTViewController.h
//  ineedhelp
//
//  Created by jonathan twaddell on 11/26/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "LTUser+Additions.h"


@interface LTViewController : UIViewController <UITableViewDataSource /*, UITableViewDelegate */>

/*
   interface properties will be weak due to there being a strong attribute on the Window
*/

@property (weak, nonatomic) IBOutlet UIImageView *girlImageView;
@property (weak, nonatomic) IBOutlet UITableView *topTableView;

/* IIA100 
 UITableViewDataSource
 UITableViewDelegate - methods are optional but provides much of the functionality
 
 
 */
@property (nonatomic, strong) NSArray *content;
@end
