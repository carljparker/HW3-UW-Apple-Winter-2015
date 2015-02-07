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
   
    itemArray = [ToDoList toDoListWithTitle:@"Hill 7"];
    

}

ToDoList *itemArray;

-(void) controlTextDidChange:(NSNotification *)obj {
    
    if ( self.itemTextField ) {
        self.addTextAsItem.enabled = YES;
    }
    
    NSLog( @"%@", self.itemTextField.stringValue);
    
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:nil];
    
    cell.textField.stringValue = [itemArray listTitle];
    return cell;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 5;
}

- (IBAction)setDups:(id)sender {
    itemArray.duplicatesOK = ! itemArray.duplicatesOK;
}

@end
