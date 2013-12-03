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
    /*
     C6 
      Check Your Network Status Core471
      Scanning for Connectivity Changes Core474
      Synchronous Downloads Core476
      Asynchronous Downloads Core480
      One-Call No Feedback Asynchronous Downloads Core486
      Recipe: Using JSON Serialization Core487
     
     NSURLSession from https://www.captechconsulting.com/blog/nicholas-cipollina/ios-7-tutorial-series-nsurlsession
     For example, if you have a scenario where an authentication token is required to be passed in header on every call to a RESTful API, you can set the token in the session configuration and it will apply to all requests made using that session.
     
     */
    
    /*
   NSURL *url=[NSURL URLWithString:@"http://www.microsoft.com"];
   NSURLRequest *request=[NSURLRequest requestWithURL:url];
    self.myConn=[NSURLConnection connectionWithRequest:request delegate:self];
   */
    
    // taken from http://www.raywenderlich.com/51127/nsurlsession-tutorial
    
    //NSString *myURL =@"http://api.openweathermap.org/data/2.5/weather?q=London,uk";
    NSString *myURL =@"http://www.microsoft.com";

    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:myURL]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                // handle response
                NSLog(@"you are in the response handler here with %@", response);
                
                // need to take data -> string http://stackoverflow.com/a/5896311/152825
                NSString *responseBody = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"and data: %@", responseBody);
                
            }] resume];

}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    //NSLog(@"got response from url");
    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
    NSLog(@"all headers: = %@",[httpResponse allHeaderFields]);
    
}

-(void) connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"this is done");
}



@end