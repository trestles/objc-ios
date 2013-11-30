//
//  LTUser.h
//  ineedhelp
//
//  Created by jonathan twaddell on 11/26/13.
//  Copyright (c) 2013 Trestles. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "LTUser+Additions.h"
#import "LTChartViewProtocol.h"

/*
   LTChartViewProtocol - is a protocol which defines methods supported; methods are by default required D79; can also have optional methods D79
    via optional directive D80
 
   @protocol XYZPieChartViewDataSource D80
     -(NSUInteger)numberOfSegements;
     -(CGFloat)sizeOfSegmentAtIndex:(NSUInteger)segmentIndex;
   @optional
      ...
   @required
      ...
   @end
 
   can check whether a method is implemetned via respondsToSelector D81
   can show a class supports multiple protocols via a comma-seperated list of values D82
   - might need multiple application delegates which is a potentially bad sign D82
   - a protocol definition is just like any other definition D83
   Do protocols support default implementations?
 
   "For example, many framework model objects (such as the collection classes like NSArray and NSDictionary) support the 
   NSCoding protocol, which means that they can encode and decode their properties for archival or distribution of raw data. NSCoding makes it 
   relatively easy to write entire object graphs to disk, provided every object within the graph adopts the protocol" D83
 
   "example of NSCopying" D83
 
    "other example of NSFetchedResultsSectionInfo" D84
 
   a reference to a data source must be made; usually of type id D79
   Delegate and Data Source properties are usually marked as weak for the object graph management reasons described earlier in D58
 */

@interface LTUser : NSObject <LTChartViewProtocol>
/*
   by default, these accessor methods are synthesized automatically for by the compiler D44
 */

@property (nonatomic, copy) void (^getMeSomeFunny)(void);

// declarations
// "objects can interact with each other by sending messages on that object" D17
-(void) saySomething;

-(id)initWithFirstName:(NSString *)theFirstName AndLastName:(NSString *)theLastName;//(NSString *)theFirstName AndLastName:(NSString *)theLastName;

// Class Method Example
+(void) showMutableStringTest;
// +(void) runThisBlock:(void (^) (void))myBlock;
//-(int)numberOfSegments; does;n't need to be declared



// the asterik means that these are pointers to objects (ie on the heap D16 rather than integral)
/*
  properties - D43 
    for public properties
    "if a property is backed by an instance variable, that variable must be set in any initialization methods" D43
      "by default a property will be backed by an instance variable"
    should be nonatomic
    memory management handled by ARC D43
 
 compiler will write / synthesize the getter and setter behind the scenes D45
 
 
  can add attributes to properties D44
    such as readonly D44
    readwrite is the default so don't need to specify for firstName D44
    can also adjust the getter in the name such as (getter=isFinshed) D45
    "in general, property accessor methods should be Key-Value Coding (KVC) compliant meaning they follow explicit naming conventions" D45

   Properties are atomic by default D52
     "This means that synthesized accessors ensure that a value is always fully retrieved by the getter method or fully set via the setter method even if accessors
      are called simultaneously from different threads" D52
          faster to access a nonatomic property D52
 
      "NOTE: Property atomicity  is not synonymous with an object's thread safety" D53
 
   Objective-C properties and variables maintain strong references to their objects D58
     The problem is that one could have a strong reference cycle if there are multiple strong relationships between objects D58
      an example of this issue of a retain cycle is a UITableView and it's delegate
      "The way to solve this problem is to substitute one of the strong references for a weak reference. A weak reference does not 
       imply ownership or responsibility between two objects, and does not keep an object alive" D59
          - in general, the delegate has a weak relationship
          - should show that example on page 60
          - your only choices are strong and weak
 
    
   Local Variables (and non-property instance variables) also maintain strong references to objects by default D61
 
 */
@property (weak) NSString *firstName;  // default is strong D61
@property (readonly, copy) NSString *lastName;  // copy allows, for example, the View to maintain its own copies of the strings D65; "even if a mutable string is set and subsequently changed, the badge view captures whatever value it has at the time it is set" D65
@property (readonly) NSString *nickName;
@property (nonatomic) NSString *byLine;  // nonatomic and getters for `lazy initialization` D51-2


@end

/*
@interface LTUser (UserAdditions)
-(void)saySomethingMore;
+(void)tellMe;
@end
*/
