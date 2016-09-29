//
//  ViewController.swift
//  Cosomer
//
//  Created by Proulx, Olivier on 16-09-22.
//  Copyright © 2016 Proulx, Olivier. All rights reserved.
//

import UIKit

class Player {
    var number: Int
    var firstname: String
    var lastname: String
    var goals: Int = 0
    var passes: Int = 0
    
    init(number: Int, firstname: String, lastname: String) {
        self.number = number
        self.firstname = firstname
        self.lastname = lastname
    }
}

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var team1_players: [Player] = []
    var team2_players: [Player] = []
    
    var team1_scorer: Int = -1;
    var team1_assist1: Int = -1;
    var team1_assist2: Int = -1;
    
    var team2_scorer: Int = -1;
    var team2_assist1: Int = -1;
    var team2_assist2: Int = -1;
    
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
    
    @IBOutlet weak var team1_add_goal: UIButton!
    
    
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
    
    @IBOutlet weak var team2_add_goal: UIButton!
    

    // Picker View
    @IBOutlet weak var team1_goal_picker: UIPickerView!
    @IBOutlet weak var team2_goal_picker: UIPickerView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("loaded")
        
        // Picker views
        self.team1_goal_picker.layer.borderColor = UIColor.grayColor().CGColor
        self.team1_goal_picker.layer.borderWidth = 1
        
        self.team2_goal_picker.layer.borderColor = UIColor.grayColor().CGColor
        self.team2_goal_picker.layer.borderWidth = 1
        
        self.team1_goal_picker.dataSource = self
        self.team1_goal_picker.delegate = self
        
        self.team2_goal_picker.dataSource = self
        self.team2_goal_picker.delegate = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let source = pickerView.tag == 0 ? team1_players : team2_players
        
        return 1 + source.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let source = pickerView.tag == 0 ? team1_players : team2_players
        print("source = " + String(pickerView.tag));
        if (component == 0) {
            if (row == 0) {
                print("buteur");
                return "Buteur"
            }
            else {
                print(String(source[row - 1].number) + " - " + source[row - 1].lastname);
                return String(source[row - 1].number) + " - " + source[row - 1].lastname
            }
        } else if (component == 1) {
            if (row == 0) {
                print("Passeur 1");
                return "Passeur 1"
            }
            else {
                print(String(source[row - 1].number) + " - " + source[row - 1].lastname);
                return String(source[row - 1].number) + " - " + source[row - 1].lastname
            }
        } else if (component == 2) {
            if (row == 0) {
                print("Passeur 2");
                return "Passeur 2"
            }
            else {
                print(String(source[row - 1].number) + " - " + source[row - 1].lastname);
                return String(source[row - 1].number) + " - " + source[row - 1].lastname
            }
        }
        
        return ""
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let button = pickerView.tag == 0 ? team1_add_goal : team2_add_goal
        
        if (component == 0) {
            if (row != 0) {
                button.enabled = true
            } else {
                button.enabled = false
            }
        }
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
            
            self.team1_players.append(Player(number: 94, firstname: "Frederic", lastname: "Desroches"))
            self.team1_goal_picker.reloadAllComponents()
            
            self.team2_players.append(Player(number: 34, firstname: "Felix", lastname: "Hubert"))
            self.team2_goal_picker.reloadAllComponents()
            
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

