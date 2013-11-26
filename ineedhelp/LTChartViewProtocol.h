//
//  LTChartViewProtocol.h
//  ineedhelp
//
//  Created by jonathan twaddell on 11/26/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LTChartViewProtocol <NSObject>
// can use C primitives D85
/*
  "It's possible to declare a C-style array in Objective-C but you'll find that collections in Cocoa and Cocoa Touch applications are usually 
   represented using instances of classes like NSArray and NSDictionary. These classes can only be used to collect Objective-C objects, which means 
   that you'll need to create instances of classes like NSValue, NSNumber, and NSString in order to represent values before you can represent them" D85

 
  also additional scalar types such as NSInteger, NSUInteger, and CGFloat D87; defined differently for different architectures
 
  "BOOL scalar type is defined in Objective-C to hold a Boolean value which is either YES or NO. As you might expect, YES is logically equivalent to true
   and 1 while NO is equivalent to false and 0." D86
 
   C Structures Can Hold Primitive Values
   "Similarly if you need to write custom drawing code, you'll need to interact with Quartz which requires structures based around the 
   CGFloat data type, like NSPoint and NSSize on OS X and CGPoint and CGSize on iOS. Again CGFloat is defined differently depending on 
    the target architecture" D87
 
   Objects Can Represent Primitive Values D87
     represent a scalar value as an object D87
 
 
 
   Numbers Are Represented By
   Represent Other Values Using Instances of the NSValue Class N90
 
   Most Collections Are Objects N91
   Use Collections to Persist Your Object Graph N99
   Most Collections Support Enumerable Objects N101
 */
-(int)numberOfSegments;
@end
