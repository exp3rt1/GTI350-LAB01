//
//  ViewController.m
//  Cosomer
//
//  Created by Felix Hubert on 2016-09-22.
//  Copyright © 2016 Les Hiboux. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)nextPeriode:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *periode;

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

- (IBAction)nextPeriode:(UIButton *)sender {
    self.periode.text = @"Periode 2";
}
@end
