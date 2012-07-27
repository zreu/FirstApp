//
//  WMStockAddViewControllerViewController.m
//  FirstApp
//
//  Created by Wolfgang Mathurin on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WMStockAddViewControllerViewController.h"

@interface WMStockAddViewControllerViewController ()

@end

@implementation WMStockAddViewControllerViewController


@synthesize delegate;
@synthesize symbol;
@synthesize symbolField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    DLog();
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    DLog();

    // Navigation bar
    self.navigationItem.title  = @"Add Stock";
    
    // Cancel button
    UIBarButtonItem* cancelButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(onCancel)];
    self.navigationItem.leftBarButtonItem = cancelButtonItem;
    
    // Save button
    UIBarButtonItem* saveButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(onSave)];
    self.navigationItem.rightBarButtonItem = saveButtonItem;
    
}

- (void)viewDidUnload
{
    DLog();
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    DLog();
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) onCancel {
    [self.delegate didAddStock:nil];
}
     
- (void) onSave {
    NSString* symbol = symbolField.text;
    [self.delegate didAddStock:symbol];         
}

@end
