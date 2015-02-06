//
//  ToDoList.m
//  HW3
//
//  Created by Parker, Carl (HBO) on 2/4/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ToDoList.h"

@interface ToDoList ()

@property (readwrite, assign) BOOL duplicatesOK;
@property (readwrite, assign) NSString * listTitle;

@end


@implementation ToDoList

+(instancetype)toDoListWithTitle:(NSString *)title;
{
    ToDoList *object = [[self alloc] init];
    object.listTitle = title;
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
  
}

-(void)removeItemWithTitle:(NSString *) title {
    
}

  // check if OK to insert
-(BOOL) canAddItemWithTitle:(NSString *) item {
  
    return YES;
}

  // check if any item contained already has same title
-(BOOL) hasItemWithTitle:(NSString*) title {
  
    return YES;
}

  // an array of all item titles (NSString*)
-(NSArray*) itemTitles {
  
    return @[ @"Apples", @"Bananas", @"Carrots" ];

}

  // an array of all items
-(NSArray*) allItems {

    ToDoItem * myToDoItem = [ToDoItem toDoItemWithName:@"Apples"];
    
    return @[ myToDoItem ];
    
}

  // number of items contained in list
-(NSUInteger) itemCount {
  
    return 10;
}


@end

