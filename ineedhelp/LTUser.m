
#import "LTUser.h"
#import "LTUser_Profile.h"



// lifecycle of an Object D43
@implementation LTUser
NSString *_city; // can create a local instance variable here (can also create at top of extension) D48

@synthesize nickName=ivar_nickName; // custom ivar name D47 - a bit arbitrary

/*
 might also implement an init method D50
 should be cognization of the designated initializer D50
 */
-(id)initWithFirstName:(NSString *)theFirstName AndLastName:(NSString *)theLastName
{
    self=[super init];
    if(self){
        _firstName=theFirstName;
        _lastName=theLastName;
        
    }
    return self;
}

-(NSString *)byLine
{
    if(!_byLine){
        _byLine=@"here is my freakin byLine";
    }
    return _byLine;
}

-(int)numberOfSegments
{
    return 7;
}

/* D17 - void no value when it is finished */
-(void) saySomething
{
    
    _city=@"Newport Beach";
    // self refers to this
    NSLog(@"I want to say something to you %@", [self firstName]);
    NSLog(@"I am from %@", _city);
    
    /*
     this is thought to NOT be a best practice according to D46 but IS in EOC
     execption in docs is for initiliazation, deallocation, or custom accessor methods
     */
    NSLog(@"I want to say something to you with an instance variable %@", _firstName);  // can access instance variable directly; can't use self here
    
    
    
    // get the address of an object via http://stackoverflow.com/questions/1261769/is-there-a-way-to-get-the-memory-address-of-any-object-as-an-nsstring
    NSLog(@"It is located at: %p", [self firstName]);
    
    // not mutable D
    [self setFirstName:@"Mimi"];
    //[self setLastName:@"Lee"];  //can't do this due to readonly attribute above; in fact the compiler will not synthesize / create a setter method for lastName
    
    NSLog(@"I want to show the change %@", [self firstName]);
    
    // variables can also by __strong or __weak D62
    //NSString * __weak myMood=[[NSString alloc] initWithString:@"happy" ];
    //NSLog(@"My mood is %@", myMood);
    
    
    void (^simpleBlock)(void)=^{  // defining a block just uses carat symbol D104
        NSLog(@"called within a block");
    };
    // delare the block like void (^simpleBlock)(void) D105
    simpleBlock();

    // blocks can take arguments and return values
    // D105
    double (^multiplyTwoValues)(double, double)=^(double firstValue, double secondValue){
        return firstValue * secondValue;
    };
    
    double myVal=multiplyTwoValues(12.0, 14.0);
    NSLog(@"my number: %.21g", myVal);

    // Blocks Can Capture Values From the Enclosing Scope D106
    // D107
    int anInteger = 42;
    void (^testBlock)(void)=^{
        NSLog(@"Integer is: %i", anInteger);
    };
    anInteger=84;
    testBlock();

    // D107
    __block int anInteger2 = 42;
    void (^testBlock2)(void)=^{
        NSLog(@"Integer is: %i", anInteger2);
    };
    anInteger2=84;
    testBlock2();

    // D108
    __block int anInteger3 = 42;
    void (^testBlock3)(void)=^{
        NSLog(@"Integer is jtjt: %i", anInteger3);
        anInteger3=100;
    };
    testBlock3();
    NSLog(@"new value is jtjt %i", anInteger3);
    
    
    // You Can Pass Blocks As Arguments to Methods or Functions D108
    /*
       power is passing blocks around for use in things like GCD
     */
    
    // A Block Should Always Be The Last Argument To A Method D110; similar to ruby
    
    
    // Use Type Definitions To Simplify Block Syntax D110
    
    // Objects Use Properties to Keep Track of Blocks D111
    
    // Avoid Strong Reference Cycles when Capturing Self D112
    
    
    
    // Blocks Can Simplify Enumeration D113
    
    // Blocks Can Simplify Concurrent Tasks D115
    
    
    // NSError - An NSError object contains a numeric error code, domain and description, as well as other relevant information packaged in a user info
    // dictionary N118
    
    /*
     
     Rather than making the requirement that every possible error have a unique error code, Cocoa and Cocoa Touch errors are divided into domains. If an 
    error occurs in an NSURLConnection, for example, the connection:didFailWithError: method above will provide an error from NSURLErrorDomain N118
     
    
     Some Methods Pass Errors By Reference D118
     
     Recover if Possible or Diplay The Error to the User D119
     
     Generating Your Own Errors D119
     
     Exceptions Are Used For Programmer Errors D120

     
     
     
     */

}

+(void) showMutableStringTest
{
    // Setup two variables to point to the same string
    NSString * str1 = @"Hello World";
    NSString * str2 = str1;
    
    // "Replace" the second string; this doesn't "mutate" the second string
    str2 = @"Hello ikilimnik";
    
    // And list their current values
    NSLog(@"str1 = %@, str2 = %@", str1, str2);
    
    // again, not mutating but rather replacing
    str1 = @"people, places things";
    NSLog(@"str1 = %@", str1);
    
}

@end
/*
 @implementation LTUser (UserAdditions)
 
 -(void)saySomethingMore{
 NSLog(@"I want to say something more to you from within category");
 }
 
 +(void)tellMe
 {
 NSLog(@"I want you to tell me from the category");
 }
 
 @end
 */