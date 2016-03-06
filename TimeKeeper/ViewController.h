//
//  ViewController.h
//  TimeKeeper
//
//  Created by Michael Fahey on 12/28/15.
//  Copyright © 2015 Michael Fahey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIDatePicker *myDatePicker;
@property (strong, nonatomic) IBOutlet UITextField *shiftLength;
@property (strong, nonatomic) IBOutlet UITextField *lunchLength;
@property (strong, nonatomic) IBOutlet UILabel *shiftLengthHoursLabel;
@property (strong, nonatomic) IBOutlet UILabel *lunchLengthHoursLabel;
@property (strong, nonatomic) IBOutlet UILabel *lengthOfShiftLabel;
@property (strong, nonatomic) IBOutlet UILabel *lengthOfLunchLabel;
@property (strong, nonatomic) IBOutlet UIButton *calculateButton;
@property (strong, nonatomic) IBOutlet UILabel *customLunchLabel;
@property (strong, nonatomic) IBOutlet UITextField *lunchMinutesLength;
@property (strong, nonatomic) IBOutlet UILabel *lunchMinutesLenghtLabel;

- (IBAction)calculateButton:(id)sender;
@end

