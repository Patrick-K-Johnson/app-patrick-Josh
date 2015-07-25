//
//  jtgDetailViewController.m
//  textEditer
//
//  Created by iD Student on 7/1/14.
//  Copyright (c) 2014 Joshua T. Grace. All rights reserved.
//

#import "jtgDetailViewController.h"
#import "jtgAppDelegate.h"

@interface jtgDetailViewController ()
@property (strong, nonatomic) UIPopoverController *DocumentsPopoverController;

//@property (nonatomic) UIAlertView * textAlertView;
- (void)configureView;
@end

@implementation jtgDetailViewController

#pragma mark - Managing the detail item

NSString *title;

double result1Finder;
double result2Finder;
double numBaths;
double numPeople;
double result1;

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem)
    {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.DocumentsPopoverController != nil)
    {
        [self.DocumentsPopoverController dismissPopoverAnimated:YES];
    }        
}
- (void)setDetailItem1:(id)newDetailItem1
{
    if (_detailItem1 != newDetailItem1)
    {
        _detailItem1 = newDetailItem1;
        
        // Update the view.
        [self configureView];
    }
    
    if (self.DocumentsPopoverController != nil)
    {
        [self.DocumentsPopoverController dismissPopoverAnimated:YES];
    }
}


- (void)configureView
{
    // Update the user interface for the detail item.

 
    if (self.detailItem1) {
        self.detailDescriptionLabel1.text = [[self.detailItem1 valueForKey: @"name1"] description];
        self.textview2.text = [self.detailItem valueForKey: @"text1"];
    }
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey: @"name"] description];
        self.textview.text = [self.detailItem valueForKey: @"text"];
    }
}



- (void)viewDidLoad
{
    
    //NSDate *myDate = UIDatePicker.date;
    
    //NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    //[dateFormat setDateFormat:@"cccc, MMM d, :hh:mm aa"];
    //NSString *prettyVersion = [dateFormat stringFromDate:myDate];

    self.navigationItem.title = @"name";
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
  //  [_textview setFont:[UIFont fontWithName:@"Comic Sans MS" size:16]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Documents", @"Documents");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.DocumentsPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.DocumentsPopoverController = nil;
}
//put in tab open
- (IBAction)doSave:(id)sender {
    NSManagedObject * managedObject = (NSManagedObject *)self.detailItem;
     NSManagedObject * managedObject2 = (NSManagedObject *)self.detailItem1;
    [managedObject setValue:[[self textview] text] forKey:@"text"];
    [managedObject2 setValue:[[self textview2] text] forKey:@"text1"];
    [(jtgAppDelegate *)[[UIApplication sharedApplication] delegate] saveContext];
    [self.DocumentsPopoverController dismissPopoverAnimated:YES];
    //[self.textview setText:@""];
    numPeople = [_textview3.text doubleValue];
    if (numPeople >1){
        _output1.text = @"sorry too few people";
    }
    numBaths = [_textview4.text doubleValue];
    if (numPeople >1){
        _output1.text = @"sorry too few of bathrooms";
    }
   
    result1Finder = (numBaths+1) * 7.5;
    result2Finder = numPeople* 7.5;
    if (result1Finder > result2Finder) {
        result1 = result1Finder;
    }else if (result1Finder <result2Finder){
         result1 = result2Finder;
    } else {
        result1 = result1Finder;
    }
    
    _output1.text = [NSString stringWithFormat:@"%g", result1];
    double CSqFt = [_textview5.text doubleValue];
    
    double result2 = CSqFt * .03;
    
    double FFlow = result1 + result2;
    
     _output1.text = [NSString stringWithFormat:@"%g", FFlow];
}

@end
