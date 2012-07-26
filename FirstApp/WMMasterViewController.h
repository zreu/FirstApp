//
//  WMMasterViewController.h
//  FirstApp
//
//  Created by Wolfgang Mathurin on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WMDetailViewController;

@interface WMMasterViewController : UITableViewController

@property (strong, nonatomic) WMDetailViewController *detailViewController;

@end
