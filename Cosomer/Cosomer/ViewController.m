//
//  ViewController.m
//  Cosomer
//
//  Created by Felix Hubert on 2016-09-22.
//  Copyright © 2016 Les Hiboux. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *period;



@property (weak, nonatomic) IBOutlet UITextField *team1_name;
@property (weak, nonatomic) IBOutlet UILabel *team1_score;
@property (weak, nonatomic) IBOutlet UITextField *team1_j1_number;
@property (weak, nonatomic) IBOutlet UITextField *team1_j2_number;
@property (weak, nonatomic) IBOutlet UITextField *team1_j3_number;
@property (weak, nonatomic) IBOutlet UITextField *team1_j4_number;
@property (weak, nonatomic) IBOutlet UITextField *team1_j5_number;
@property (weak, nonatomic) IBOutlet UITextField *team1_j1_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j2_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j3_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j4_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j5_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j1_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j2_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j3_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j4_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team1_j5_lastname;
@property (weak, nonatomic) IBOutlet UILabel *team1_j1_goal;
@property (weak, nonatomic) IBOutlet UILabel *team1_j2_goal;
@property (weak, nonatomic) IBOutlet UILabel *team1_j3_goal;
@property (weak, nonatomic) IBOutlet UILabel *team1_j4_goal;
@property (weak, nonatomic) IBOutlet UILabel *team1_j5_goal;
@property (weak, nonatomic) IBOutlet UILabel *team1_j1_assist;
@property (weak, nonatomic) IBOutlet UILabel *team1_j2_assist;
@property (weak, nonatomic) IBOutlet UILabel *team1_j3_assist;
@property (weak, nonatomic) IBOutlet UILabel *team1_j4_assist;
@property (weak, nonatomic) IBOutlet UILabel *team1_j5_assist;
@property (weak, nonatomic) IBOutlet UITextField *team1_input_goal;
@property (weak, nonatomic) IBOutlet UITextField *team1_input_assist1;
@property (weak, nonatomic) IBOutlet UITextField *team1_input_assist2;
- (IBAction)team1_line_submit:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UITextField *team2_name;
@property (weak, nonatomic) IBOutlet UILabel *team2_score;
@property (weak, nonatomic) IBOutlet UITextField *team2_j1_number;
@property (weak, nonatomic) IBOutlet UITextField *team2_j2_number;
@property (weak, nonatomic) IBOutlet UITextField *team2_j3_number;
@property (weak, nonatomic) IBOutlet UITextField *team2_j4_number;
@property (weak, nonatomic) IBOutlet UITextField *team2_j5_number;
@property (weak, nonatomic) IBOutlet UITextField *team2_j1_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j2_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j3_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j4_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j5_firstname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j1_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j2_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j3_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j4_lastname;
@property (weak, nonatomic) IBOutlet UITextField *team2_j5_lastname;
@property (weak, nonatomic) IBOutlet UILabel *team2_j1_goal;
@property (weak, nonatomic) IBOutlet UILabel *team2_j2_goal;
@property (weak, nonatomic) IBOutlet UILabel *team2_j3_goal;
@property (weak, nonatomic) IBOutlet UILabel *team2_j4_goal;
@property (weak, nonatomic) IBOutlet UILabel *team2_j5_goal;
@property (weak, nonatomic) IBOutlet UILabel *team2_j1_assist;
@property (weak, nonatomic) IBOutlet UILabel *team2_j2_assist;
@property (weak, nonatomic) IBOutlet UILabel *team2_j3_assist;
@property (weak, nonatomic) IBOutlet UILabel *team2_j4_assist;
@property (weak, nonatomic) IBOutlet UILabel *team2_j5_assist;
@property (weak, nonatomic) IBOutlet UITextField *team2_input_goal;
@property (weak, nonatomic) IBOutlet UITextField *team2_input_assist1;
@property (weak, nonatomic) IBOutlet UITextField *team2_input_assist2;
- (IBAction)team2_line_submit:(UIButton *)sender;


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

- (IBAction)team1_line_submit:(UIButton *)sender {
}

@end
