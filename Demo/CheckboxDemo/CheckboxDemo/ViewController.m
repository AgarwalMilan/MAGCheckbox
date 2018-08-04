//
//  ViewController.m
//  CheckboxDemo
//
//  Created by Milan Agarwal on 03/08/18.
//  Copyright © 2018 Milan Agarwal. All rights reserved.
//

#import "ViewController.h"
#import "MAGCheckbox.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MAGCheckbox *btnCheckbox1;
@property (weak, nonatomic) IBOutlet MAGCheckbox *btnCheckbox2;
@property (weak, nonatomic) IBOutlet MAGCheckbox *btnCheckbox3;
@property (weak, nonatomic) IBOutlet MAGCheckbox *btnCheckbox4;
- (IBAction)btnToggleCheckbox1Tapped:(UIButton *)sender;
- (IBAction)btnToggleCheckbox2Tapped:(UIButton *)sender;
- (IBAction)btnToggleCheckbox3Tapped:(UIButton *)sender;
- (IBAction)btnToggleCheckbox4Tapped:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnToggleCheckbox1Tapped:(UIButton *)sender {
    self.btnCheckbox1.selected = !self.btnCheckbox1.isSelected;
}

- (IBAction)btnToggleCheckbox2Tapped:(UIButton *)sender {
    self.btnCheckbox2.selected = !self.btnCheckbox2.isSelected;
}

- (IBAction)btnToggleCheckbox3Tapped:(UIButton *)sender {
    self.btnCheckbox3.selected = !self.btnCheckbox3.isSelected;
}

- (IBAction)btnToggleCheckbox4Tapped:(UIButton *)sender {
    self.btnCheckbox4.selected = !self.btnCheckbox4.isSelected;
}
@end
