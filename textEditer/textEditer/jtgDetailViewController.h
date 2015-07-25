//
//  jtgDetailViewController.h
//  textEditer
//
//  Created by iD Student on 7/1/14.
//  Copyright (c) 2014 Joshua T. Grace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jtgDetailViewController : UIViewController <UISplitViewControllerDelegate>{

}
//@property (weak, nonatomic) IBOutlet UITextView *textview;

@property (weak, nonatomic) IBOutlet UITextField *textview;
@property (weak, nonatomic) IBOutlet UITextField *textview2;
@property (weak, nonatomic) IBOutlet UITextField *textview3;
@property (weak, nonatomic) IBOutlet UITextField *textview4;
@property (weak, nonatomic) IBOutlet UITextField *textview5;

//@property (weak, nonatomic) IBOutlet UINavigationItem *navBar;
@property (weak, nonatomic) IBOutlet UINavigationItem *navBar;
//- (IBAction)start:(id)sender;

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) id detailItem1;
//@property (weak, nonatomic) IBOutlet UIDatePicker *DaDate;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel1;
//@property (weak, nonatomic) IBOutlet UILabel *output1;
@property (weak, nonatomic) IBOutlet UILabel *output1;

- (IBAction)doSave:(id)sender;
@end
