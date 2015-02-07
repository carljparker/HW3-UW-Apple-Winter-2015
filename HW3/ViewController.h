//
//  ViewController.h
//  HW3
//
//  Created by Parker, Carl (HBO) on 1/31/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTextFieldDelegate, NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTextField *itemTextField;

@property (weak) IBOutlet NSTableView *itemListTable;

@property (weak) IBOutlet NSButton *addTextAsItem;

@property (weak) IBOutlet NSButton *removeItemWithText;

@property (weak) IBOutlet NSButton *allowDups;

@end

