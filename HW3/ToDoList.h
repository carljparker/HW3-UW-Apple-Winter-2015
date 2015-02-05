//
//  ToDoList.h
//  HW3
//
//  Created by Parker, Carl (HBO) on 2/4/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#ifndef HW3_ToDoList_h
#define HW3_ToDoList_h

#import <Foundation/Foundation.h>

#import "ToDoItem.h"

@interface ToDoList : NSObject

// properties
@property (readonly, nonatomic) BOOL duplicatesOK;

// methods
-(void)addItem:(ToDoItem *)item;    // insert item if OK
-(BOOL)canAddItem:(ToDoItem *)item; // check if OK to insert

-(void)addItemWithTitle:(NSString*)title; // create and insert item if OK
-(BOOL)canAddItemWithTitle:(NSString *)item; // check if OK to insert
-(BOOL)hasItemWithTitle:(NSString*)title; // check if any item contained already has same title

-(NSArray*)itemTitles;  // an array of all item titles (NSString*)
-(NSArray*)allItems;    // an array of all items
-(NSUInteger)itemCount; // number of items contained in list

@end

#endif