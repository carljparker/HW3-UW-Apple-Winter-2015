//
//  ViewController.m
//  HW3
//
//  Created by Parker, Carl (HBO) on 1/31/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ViewController.h"
#import "ToDoList.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.itemTextField.delegate = self;
    
    self.itemListTable.delegate = self;
    self.itemListTable.dataSource = self;
    
    // Set default state for controls
    self.addTextAsItem.enabled = NO;
    self.removeItemWithText.enabled = NO;
    self.allowDups.state = NO;
   
    //instantiate the To Do List object
    toDoList = [ToDoList toDoListWithTitle:@"Hill 7"];
    
}

ToDoList *toDoList;

-(void) controlTextDidChange:(NSNotification *)obj {
    
    NSString * fieldContents = self.itemTextField.stringValue;
    
    // Only enable the add button if constraints are met
    if ( fieldContents ) {
        if ( [self allowDups] ) {
            self.addTextAsItem.enabled = YES;
       }
        else if ( ! [toDoList hasItemWithTitle:fieldContents] ) {
            self.addTextAsItem.enabled = YES;
       }
    }

    // enable remove button if the text matches something in the list
    if ( [toDoList hasItemWithTitle:fieldContents] ) {
        self.removeItemWithText.enabled = YES;
    }
    NSLog( @"%@", self.itemTextField.stringValue);
    
}

- (IBAction)addItemButton:(id)sender {
    // add the item
    [toDoList addItemWithTitle:self.itemTextField.stringValue];
    
    // reset the text field and add button
    self.itemTextField.stringValue = @"";
    self.addTextAsItem.enabled = NO;
    self.removeItemWithText.enabled = NO;

}

- (IBAction)addOnTextFieldReturn:(id)sender {
    [self addItemButton:sender];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:nil];
    
    cell.textField.stringValue = [toDoList listTitle];
    return cell;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 5;
}

- (IBAction)setDups:(id)sender {
    toDoList.duplicatesOK = ! toDoList.duplicatesOK;
}

@end
