//
//  ViewController.m
//  HW3
//
//  Created by Parker, Carl (HBO) on 1/31/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.itemTextField.delegate = self;

}

-(void) controlTextDidChange:(NSNotification *)obj {
    NSLog( @"%@", self.itemTextField.stringValue);
}

@end
