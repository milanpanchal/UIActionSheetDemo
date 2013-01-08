//
//  ViewController.m
//  UIActionSheetDemo
//
//  Created by Himanshu on 08/01/13.
//  Copyright (c) 2013 Pantech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Actionsheet Demo"
                                                             delegate:nil
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Option 1",@"Option 2", nil];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
        [actionSheet showFromRect:self.view.bounds inView:self.view animated:YES];

        
    } else {

        // If you will un comment the following code then it will crash your app
        
//        [actionSheet showFromRect:self.view.bounds inView:self.view animated:YES];

        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Actionsheet will not work" message:@"If you will try to display action sheet in iPad then app will crash" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];

    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    
   
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
