//
//  jtgAppDelegate.h
//  textEditer
//
//  Created by iD Student on 7/1/14.
//  Copyright (c) 2014 Joshua T. Grace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jtgAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext2;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
