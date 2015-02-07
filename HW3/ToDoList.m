//
//  ToDoList.m
//  HW3
//
//  Created by Parker, Carl (HBO) on 2/4/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ToDoList.h"

@interface ToDoList ()

@property (readwrite, assign) NSString * listTitle;
@property (readwrite) NSMutableArray * theList;

@end


@implementation ToDoList


+(instancetype)toDoListWithTitle:(NSString *)title;
{
    ToDoList *object = [[self alloc] init];
    object.listTitle = title;
    object.theList = [NSMutableArray new];
    return object;
}


  // create and insert item if OK
-(void) addItemWithTitle:(NSString*) title {
    
    NSUInteger currentCount = [_theList count];
    
    ToDoItem * newItem = [ToDoItem toDoItemWithTitle:title];
    
    [_theList addObject:newItem];
    
    // test
    NSUInteger newCount = [_theList count];
    assert( newCount == currentCount + 1);
    
}


-(void)removeItemWithTitle:(NSString *) title {
    NSUInteger currentCount = [_theList count];
    
    // yes, this will remove all items in the list that
    // match the specified title . . . by design.
    for (id item in _theList) {
        if ( [item title] == title ) {
            [_theList removeObject:item];
        }
    }
    
    // test
    NSUInteger newCount = [_theList count];
    assert( newCount == currentCount - 1);
}


  // check if any item contained already has the specified title
-(BOOL) hasItemWithTitle:(NSString*) title {
    for (id item in _theList) {
        if ( [item title] == title ) {
            return YES;
        }
    }
    return NO;
}


  // an array of all item titles (NSString*)
-(NSArray*) itemTitles {
  
    NSMutableArray * titleArray;
    
    for (id item in _theList) {
        [titleArray addObject:[item title]];
    }

    return [NSArray arrayWithArray:titleArray];

}

         
  // an array of all items
-(NSArray*) allItems {
    
    return [NSArray arrayWithArray:_theList];
    
}

         
  // number of items contained in list
-(NSUInteger) itemCount {
  
    return [_theList count];
}


@end

