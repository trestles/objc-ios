//
//  IAMax.m
//  customui
//
//  Created by jonathan twaddell on 11/21/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import "IAMax.h"
//#import "IAMineViewController.h"

@interface IAMax(){
}



@end



@implementation IAMax


/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
*/
 

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    NSLog(@"here i am");
    
    
    
    UIBezierPath *aPath = [UIBezierPath bezierPath];
    
    
    
    
    // Set the starting point of the shape.
    [aPath moveToPoint:CGPointMake(100.0, 0.0)];
    // Draw the lines.
    [aPath addLineToPoint:CGPointMake(200.0, 40.0)];
    [aPath addLineToPoint:CGPointMake(160, 140)];
    [aPath addLineToPoint:CGPointMake(40.0, 140)];
    [aPath addLineToPoint:CGPointMake(0.0, 40.0)];
    [aPath closePath];
    aPath.lineWidth = 2;
    [aPath fill];
    [aPath stroke];
    
    UIView *polygonView = [[UIView alloc] initWithFrame: CGRectMake ( 100, 200, 200, 150)];
    [polygonView setBackgroundColor:[UIColor orangeColor]];
    //add code to customize, e.g. polygonView.backgroundColor = [UIColor blackColor];
    
    
    
    [self addSubview:polygonView];

    /* circle with image as fill */
    UIBezierPath *circle = [UIBezierPath
                            bezierPathWithOvalInRect:CGRectMake(75, 100, 200, 200)];
    UIImage *patternImg=[UIImage imageNamed:@"dogs-burley.jpg"];
    UIColor *fill = [UIColor colorWithPatternImage:patternImg];
    [fill setFill];
    [circle fill];
    //[[UIColor greenColor] setFill];
    [[UIColor blueColor] setStroke];
    circle.lineWidth=2.0;
    [circle stroke];
    
    /*
    UIBezierPath *cell = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 133, 55) cornerRadius:10];
    [[UIColor greenColor] setFill];
    [cell fill];
    */
    
    UIImage *myImage=[UIImage imageNamed:@"flowers.jpg"];
    NSLog(@"here is widgh: %f",myImage.size.width);
    UIImageView *myImageView=[[UIImageView alloc] initWithImage:myImage];
    myImageView.frame=CGRectMake(50,250,200,200);
    [self addSubview:myImageView];

     
    //CGSize imageSize={20,40};

    //CGRect imageRect = CGRectMake(0.0, 0.0, 100.0, 100.0);
    
    //CGRect aRect = { aPoint, aSize};

 
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 20, 200, 44); // position in the parent view and set the size of the button
    [myButton setTitle:@"Click Me!" forState:UIControlStateNormal];
    // add targets and actions
    [myButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    // add to a view
    [self addSubview:myButton];
    
    
    /*
    CGSize size={20,40};
    CGRect anRect=CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0); // size is a CGSize of the result you want
    [myImage drawInRect:imageRect];  // image is the UIImage you want to clip, imageRect is the rect in the context where you want your image
    [mask drawInRect:rect blendMode:kCGBlendModeDestinationIn alpha:1.0];  // mask is a UIImage containing the mask you drew, rect is the rect in the context where you want your mask - could match imageRect above
    UIImage* uiImage = UIGraphicsGetImageFromCurrentImageContext();
     */
}

-(void)buttonClicked:(id)sender
{
    NSLog(@"you clicked the button");
    //IAMineViewController *myNewVC = [[IAMineViewController alloc] init];
    // do any setup you need for myNewVC
    //[self.parentController presentModalViewController:myNewVC animated:YES];
}

@end
