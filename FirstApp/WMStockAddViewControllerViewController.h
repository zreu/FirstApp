//
//  WMStockAddViewControllerViewController.h
//  FirstApp
//
//  Created by Wolfgang Mathurin on 7/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WMStockAddDelegate
// symbol is nil on cancel
- (void) didAddStock:(NSString*) symbol;
@end


@interface WMStockAddViewControllerViewController : UIViewController

@property(nonatomic, weak) id <WMStockAddDelegate> delegate;
@property(nonatomic, strong) NSString* symbol;
@property(nonatomic, strong) IBOutlet UITextField *symbolField;

- (void) onSave;
- (void) onCancel;

@end

