//
//  jtgMasterViewController.h
//  textEditer
//
//  Created by iD Student on 7/1/14.
//  Copyright (c) 2014 Joshua T. Grace. All rights reserved.
//

#import <UIKit/UIKit.h>

@class jtgDetailViewController;

#import <CoreData/CoreData.h>

@interface jtgMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) jtgDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) UIPopoverController *popover;

@end
