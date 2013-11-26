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
    
    [LTUser tellMe];
    NSLog(@"here is my profile name %@",[jonathanTwaddell profileName]);

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
