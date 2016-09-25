//
//  ViewController.swift
//  Cosomer
//
//  Created by Proulx, Olivier on 16-09-22.
//  Copyright © 2016 Proulx, Olivier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var period: UILabel!
    @IBOutlet weak var period_button: UIButton!
    
    // Team 1
    @IBOutlet weak var team1_name: UITextField!
    @IBOutlet weak var team1_score: UILabel!
    
    @IBOutlet weak var team1_p1_number: UITextField!
    @IBOutlet weak var team1_p1_firstname: UITextField!
    @IBOutlet weak var team1_p1_lastname: UITextField!
    @IBOutlet weak var team1_p1_goals: UILabel!
    @IBOutlet weak var team1_p1_assists: UILabel!
    
    @IBOutlet weak var team1_p2_number: UITextField!
    @IBOutlet weak var team1_p2_firstname: UITextField!
    @IBOutlet weak var team1_p2_lastname: UITextField!
    @IBOutlet weak var team1_p2_goals: UILabel!
    @IBOutlet weak var team1_p2_assists: UILabel!
    
    @IBOutlet weak var team1_p3_number: UITextField!
    @IBOutlet weak var team1_p3_firstname: UITextField!
    @IBOutlet weak var team1_p3_lastname: UITextField!
    @IBOutlet weak var team1_p3_goals: UILabel!
    @IBOutlet weak var team1_p3_assists: UILabel!
    
    @IBOutlet weak var team1_p4_number: UITextField!
    @IBOutlet weak var team1_p4_firstname: UITextField!
    @IBOutlet weak var team1_p4_lastname: UITextField!
    @IBOutlet weak var team1_p4_goals: UILabel!
    @IBOutlet weak var team1_p4_assists: UILabel!
    
    @IBOutlet weak var team1_p5_number: UITextField!
    @IBOutlet weak var team1_p5_firstname: UITextField!
    @IBOutlet weak var team1_p5_lastname: UITextField!
    @IBOutlet weak var team1_p5_goals: UILabel!
    @IBOutlet weak var team1_p5_assists: UILabel!
    
    @IBOutlet weak var team1_scorer: UITextField!
    @IBOutlet weak var team1_assist1: UITextField!
    @IBOutlet weak var team1_assist2: UITextField!
    
    // Team 2
    @IBOutlet weak var team2_name: UITextField!
    @IBOutlet weak var team2_score: UILabel!
    
    @IBOutlet weak var team2_p1_number: UITextField!
    @IBOutlet weak var team2_p1_firstname: UITextField!
    @IBOutlet weak var team2_p1_lastname: UITextField!
    @IBOutlet weak var team2_p1_goals: UILabel!
    @IBOutlet weak var team2_p1_assists: UILabel!
    
    @IBOutlet weak var team2_p2_number: UITextField!
    @IBOutlet weak var team2_p2_firstname: UITextField!
    @IBOutlet weak var team2_p2_lastname: UITextField!
    @IBOutlet weak var team2_p2_goals: UILabel!
    @IBOutlet weak var team2_p2_assists: UILabel!
    
    @IBOutlet weak var team2_p3_number: UITextField!
    @IBOutlet weak var team2_p3_firstname: UITextField!
    @IBOutlet weak var team2_p3_lastname: UITextField!
    @IBOutlet weak var team2_p3_goals: UILabel!
    @IBOutlet weak var team2_p3_assists: UILabel!
    
    @IBOutlet weak var team2_p4_number: UITextField!
    @IBOutlet weak var team2_p4_firstname: UITextField!
    @IBOutlet weak var team2_p4_lastname: UITextField!
    @IBOutlet weak var team2_p4_goals: UILabel!
    @IBOutlet weak var team2_p4_assists: UILabel!
    
    @IBOutlet weak var team2_p5_number: UITextField!
    @IBOutlet weak var team2_p5_firstname: UITextField!
    @IBOutlet weak var team2_p5_lastname: UITextField!
    @IBOutlet weak var team2_p5_goals: UILabel!
    @IBOutlet weak var team2_p5_assists: UILabel!
    
    @IBOutlet weak var team2_scorer: UITextField!
    @IBOutlet weak var team2_assist1: UITextField!
    @IBOutlet weak var team2_assist2: UITextField!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func period_button_click(sender: UIButton) {
        let label_button:String = (period_button.titleLabel?.text)! as String
        switch label_button {
        case "Débuter":
            team1_name.enabled = false
            team2_name.enabled = false
            
            team1_p1_number.enabled = false
            team1_p1_firstname.enabled = false
            team1_p1_lastname.enabled = false
            team1_p2_number.enabled = false
            team1_p2_firstname.enabled = false
            team1_p2_lastname.enabled = false
            team1_p3_number.enabled = false
            team1_p3_firstname.enabled = false
            team1_p3_lastname.enabled = false
            team1_p4_number.enabled = false
            team1_p4_firstname.enabled = false
            team1_p4_lastname.enabled = false
            team1_p5_number.enabled = false
            team1_p5_firstname.enabled = false
            team1_p5_lastname.enabled = false
            
            team2_p1_number.enabled = false
            team2_p1_firstname.enabled = false
            team2_p1_lastname.enabled = false
            team2_p2_number.enabled = false
            team2_p2_firstname.enabled = false
            team2_p2_lastname.enabled = false
            team2_p3_number.enabled = false
            team2_p3_firstname.enabled = false
            team2_p3_lastname.enabled = false
            team2_p4_number.enabled = false
            team2_p4_firstname.enabled = false
            team2_p4_lastname.enabled = false
            team2_p5_number.enabled = false
            team2_p5_firstname.enabled = false
            team2_p5_lastname.enabled = false
            
            period_button.setTitle("Prochaine période", forState: .Normal)
            period.text = "1"
            break
        case "Prochaine période":
            if(period.text == "1") {
                period.text = "2"
            } else {
                period.text = "3"
                period_button.setTitle("Terminer la partie", forState: .Normal)
            }
            break
        default:
            print("Default case")
            break
        }
        if period_button.titleLabel?.text == "Débuter" {
            
        }
    }
    
    @IBAction func team1_add_goal_click(sender: UIButton) {
    }
    
    @IBAction func team2_add_goal_click(sender: UIButton) {
    }
    
}

