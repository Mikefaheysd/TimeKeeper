//
//  ViewController.m
//  TimeKeeper
//
//  Created by Michael Fahey on 12/28/15.
//  Copyright © 2015 Michael Fahey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self.myDatePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButton:(id)sender {
    self.customLunchLabel.hidden=NO;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"hh:mm a"];
    if ([self.lunchLength.text  isEqual: @""] && [self.lunchMinutesLength.text  isEqual: @""]) {
        self.lunchLength.text = @"1";
        self.lunchMinutesLength.text=@"00";
    }
    
    if ([self.shiftLength.text  isEqual: @""]) {
        self.shiftLength.text = @"9";
    }
    
    if([self.shiftLength.text doubleValue] <= 24 && [self.lunchLength.text doubleValue] <= 24 && [self.lunchMinutesLength.text doubleValue] <=60){
        NSDate *date = self.myDatePicker.date;
        NSDate *incrementedDate = [NSDate dateWithTimeInterval:[self.shiftLength.text doubleValue]*3600 sinceDate:date];
        
        NSString *strDate = [dateFormatter stringFromDate:incrementedDate];
        
        incrementedDate = [NSDate dateWithTimeInterval:([self.shiftLength.text doubleValue]+[self.lunchLength.text doubleValue]+[self.lunchMinutesLength.text doubleValue]/60)*3600 sinceDate:date];
        strDate = [dateFormatter stringFromDate:incrementedDate];
        if ([self.lunchLength.text doubleValue] < 1) {
            self.customLunchLabel.text = [NSString stringWithFormat: @"With a %@ minute lunch you will be off at %@",self.lunchMinutesLength.text, strDate];
        }
        else
            self.customLunchLabel.text = [NSString stringWithFormat: @"With a %@:%@ hour lunch you will be off at %@",self.lunchLength.text, self.lunchMinutesLength.text, strDate];
    }
    else
    {
        self.customLunchLabel.text = @"Invalid input, please recalculate";
    }
    [self.view endEditing:YES];
}



@end
