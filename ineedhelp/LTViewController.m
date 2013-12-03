//
//  LTViewController.m
//  ineedhelp
//
//  Created by jonathan twaddell on 11/26/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import "LTViewController.h"
#import "LTUser.h"
#import "LTUser+Add.h"
#import "LTUser_Profile.h" // extension
#import "LTDetailViewController.h"
//#import <QuartzCore/QuartzCore.h>

/*
  Categories - "Any Methods that you declare in a category will be available to all instances of the original class, as well as subclasses 
 of the original class. At runtime, there's no difference between a method added by a category and one that is implemented by the original class. At runtime, there's no difference between a method added by a category and one that is implemented by the original class" D69 
 
   "Categories can be used to declare either instance methods or class methods but are not usually suitable for declaring additional properties" D70
 
   "It's valid syntax to include a property declaration in a category interface, but it's not possible to declare an additional instance variable in
   a category. This means the compiler won't synthesize any instance variable, nor will it synthesize any property accessor methods. You can write your 
   own accessor methods in the category implementation but you won't be able to keep track of a value for that property unless it's stored by the orignal class. The only way to add a traditional property - backed by a new instance variable - to an existing class is to use a class extension (see D72)" D70
 
   you should prefix your category methods - D72
 
  Delegation - perhaps rather than using categories or extensions, you should consider delegation D75

*/
 

@interface LTViewController ()

@end

@implementation LTViewController

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
    
    /* EOC11 
     
     Be sure to set the dataSource in IB
     
     UITableView
       - 
       - 
       - 
       - creating custom UITableViewCell
     
     */
    
    
    // http://stackoverflow.com/a/18926005/152825
    self.edgesForExtendedLayout = UIRectEdgeNone;

    NSDictionary *person1=@{@"mainTitleKey": @"Tom Curren", @"secondaryTitleKey": @"A Surfer in Santa Barbara"};
    NSDictionary *person2=@{@"mainTitleKey": @"Yoco Koko", @"secondaryTitleKey": @"A Model in Paris"};
    NSDictionary *person3=@{@"mainTitleKey": @"Haruki Murakami", @"secondaryTitleKey": @"An Author in Tokyo"};
    
    /*
     
     setting a UIImageView 
       can use View -> Mode
            Aspect Fit
            Aspect Fill
     
    */
    
    self.content = @[person1, person2, person3];
    
    // lets set a border on the topTableView
    self.topTableView.layer.borderColor = [UIColor greenColor].CGColor;
    self.topTableView.layer.borderWidth = 3.0f;
    
    //self.tableView.contentInset = UIEdgeInsetsMake(-20, 0, -20, 0);
    
    
    self.girlImageView.image=[UIImage imageNamed:@"nice-view.jpg"];
    self.girlImageView.userInteractionEnabled=true;
    
    
    // http://stackoverflow.com/questions/3330378/cocoa-touch-how-to-change-uiviews-border-color-and-thickness
    self.girlImageView.layer.borderColor = [UIColor redColor].CGColor;
    self.girlImageView.layer.borderWidth = 3.0f;
    
    /*
       UISwipeGestureRecognizer - see Stanford Class for a discussion of this
        -> be sure to set UserInteractionEnabled
     
     
     
     
     */

    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                            initWithTarget:self action:@selector(handleTap:)];
    //swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.girlImageView addGestureRecognizer:tap];

    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]
                                            initWithTarget:self action:@selector(handleSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.girlImageView addGestureRecognizer:swipeRight];
    //[swipeRight release];
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]
                                           initWithTarget:self action:@selector(handleSwipe:)];

    
    
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.girlImageView addGestureRecognizer:swipeLeft];
    //[swipeLeft release];
    
    
    LTUser *user=[[LTUser alloc] init]; // can create just via init or constructor below
    [user setFirstName:@"joe"];
    [user saySomething];
    
    NSLog(@"I need help %@",[user firstName]);
    [user setFirstName:@"Mike"];
    // can also use dot syntax D45
    NSLog(@"I need to tell Mike %@",user.firstName);
    
    [LTUser showMutableStringTest];
    
    LTUser *jonathanTwaddell=[[LTUser alloc] initWithFirstName:@"Jonathan" AndLastName:@"Twaddell"];  // here's the constructor
    [jonathanTwaddell saySomething];
    
    
    [jonathanTwaddell saySomethingMore];
    [jonathanTwaddell setProfileName:@"My Killer Profile Name"];
    
    [jonathanTwaddell setGetMeSomeFunny:^{
        NSLog(@"here aer things within block");
    }];
    //[jonathanTwaddell getMeSomeFunny]();
//    [jonathanTwaddell runThisBlock:^{ [NSLog(@"here i am within this block")] ];
    
    
    [LTUser tellMe];
    
    NSLog(@"here is my profile name %@",[jonathanTwaddell profileName]);

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.content.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    if (cell == nil) {
        
        /*
         *   Actually create a new cell (with an identifier so that it can be dequeued).
         */
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyIdentifier"];
    }
    
   cell.selectionStyle = UITableViewCellSelectionStyleNone;
   NSDictionary *item = (NSDictionary *)[self.content objectAtIndex:indexPath.row];
  cell.textLabel.text = [item objectForKey:@"mainTitleKey"];
    NSLog(@"here is value: %@", cell.textLabel.text);
   //cell.detailTextLabel.text = [item objectForKey:@"secondaryTitleKey"];
        /*
        NSString *path = [[NSBundle mainBundle] pathForResource:[item objectForKey:@"imageKey"] ofType:@"png"];
        UIImage *theImage = [UIImage imageWithContentsOfFile:path];
        cell.imageView.image = theImage;
        */
        /* Now that the cell is configured we return it to the table view so that it can display it */
        
  return cell;
    
}

  /*
    IIA73-4 segues on a detail view controller
   
   */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"you selected me");
    [self performSegueWithIdentifier:@"detailPush" sender:self.content[indexPath.row]];
  }

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
     // IIA74 - specify the View Controller in question
    if ([[segue identifier] isEqualToString:@"detailPush"])
    {
        LTDetailViewController *vc = [segue destinationViewController];
        NSDictionary *personNew=sender;
        [vc setPerson:personNew];
    }
}
-(void) handleSwipe:(id)sender
{
    NSLog(@"you handled the swipe here");
}

-(void) handleTap:(id)sender
{
    NSLog(@"you handled the tap width: %f height: %f", self.topTableView.frame.size.width, self.topTableView.frame.size.height);
    /*
     
      C158-159
        Recipes:
         1. Fading A View In and Out C159
         2. Swapping Views C161
         3. Flipping Views C162
         4. Core Animation Transitions C163
         5. Bouncing Views as they appear C165
         6. Image View Animations C166
     */
    
    
    
    [UIView animateWithDuration:2
                          delay:0
                        options: UIViewAnimationOptionCurveLinear
                     animations:^{
                         //moneyHolder.frame = targetFrame;
                         CGRect temp2 = self.topTableView.frame;
                         temp2.size.height = 100;
                         self.topTableView.frame=temp2;

                         
                         
                         CGRect temp = self.girlImageView.frame;
                         temp.size.height = 400;
                         self.girlImageView.frame=temp;
                     }
                     completion:^(BOOL finished){
                         NSLog(@"done");
                     }
     ];
}


- (IBAction)showLoginModal:(id)sender {
    NSLog(@"will show loginModal here");
    [self performSegueWithIdentifier:@"loginSegue" sender:sender];


}

- (IBAction)goToMapView:(id)sender {
    NSLog(@"about to go to MapView");
    [self performSegueWithIdentifier:@"pushMapView" sender:sender];

}
@end
