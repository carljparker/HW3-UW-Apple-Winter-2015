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

  // insert item if OK
-(void) addItem:(ToDoItem *)item {
    
};

  // check if OK to insert
-(BOOL) canAddItem:(ToDoItem *) item {
  
    return YES;
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
    
    if ( [self hasItemWithTitle:title] ) {
        
        ToDoItem * obsItem = [ToDoItem toDoItemWithTitle:title];
        [_theList removeObject:obsItem];
    }
    
    // test
    NSUInteger newCount = [_theList count];
    assert( newCount == currentCount - 1);
}

  // check if OK to insert
-(BOOL) canAddItemWithTitle:(NSString *) item {
  
    return YES;
}

  // check if any item contained already has same title
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
  
    return @[ @"Apples", @"Bananas", @"Carrots" ];

}

  // an array of all items
-(NSArray*) allItems {
    
    

    ToDoItem * myToDoItem = [ToDoItem toDoItemWithTitle:@"Apples"];

    return  @[ myToDoItem ];
    
}

  // number of items contained in list
-(NSUInteger) itemCount {
  
    return 10;
}


@end

