//
//  ViewController.m
//  UnitConverter
//
//  Created by Tongtong Xu on 11/14/15.
//  Copyright © 2015 Tongtong Xu. All rights reserved.
//

#import "ViewController.h"

double convertUnitmtoUnitm(double unitm){
    double unitcm;
    unitcm = 100* unitm;
    return unitcm;
}
double convertUnitOnetoUnitThree(double unitm){
    double unitinch;
    unitinch = 39.37 * unitm;
    return unitinch;
}
double convertUnitOnetoUnitFour(double unitm){
    double unitfeet;
    unitfeet = 3.28* unitm;
    return unitfeet;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    
    if(self.segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertUnitmtoUnitm(userInput);
        
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    else if(self.segmentController.selectedSegmentIndex == 1){
        double unitThreeValue = convertUnitOnetoUnitThree(userInput);
        
        [buf appendString: [@(unitThreeValue) stringValue]];    }
    else{
        double unitFourValue = convertUnitOnetoUnitFour(userInput);
        
        [buf appendString: [@(unitFourValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
