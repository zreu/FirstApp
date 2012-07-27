//
//  WMMasterViewController.h
//  FirstApp
//
//  Created by Wolfgang Mathurin on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WMStockAddViewControllerViewController.h"

@class WMDetailViewController;

@interface WMMasterViewController : UITableViewController <WMStockAddDelegate>

@property (strong, nonatomic) WMDetailViewController *detailViewController;

- (void) didAddStock:(NSString*)symbol;

@end
