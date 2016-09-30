//
//  ViewController.swift
//  Cosomer
//
//  Created by Proulx, Olivier on 16-09-22.
//  Copyright © 2016 Proulx, Olivier. All rights reserved.
//

import UIKit

class Player {
    var number: Int = 0
    var firstname: String = "DefaultFirstName"
    var lastname: String = "DefaultLastName"
    var goals: Int = 0
    var passes: Int = 0
    
    init(number: Int, firstname: String, lastname: String) {
        self.number = number
        self.firstname = firstname
        self.lastname = lastname
    }
}

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITableViewDelegate, UITableViewDataSource {
    var team1_players: [Player] = []
    var team2_players: [Player] = []
    
    var team1_global_score = 0
    var team2_global_score = 0
    
    var periodCount = 1
    
    var goals: [(Int, String, Player, Player?, Player?)] = []
    
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
    
    // Table
    @IBOutlet weak var goalTable: UITableView!    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.à        
        // Picker views
        self.team1_goal_picker.layer.borderColor = UIColor.grayColor().CGColor
        self.team1_goal_picker.layer.borderWidth = 1
        self.team1_goal_picker.hidden = true
        self.team1_add_goal.hidden = true
        
        self.team2_goal_picker.layer.borderColor = UIColor.grayColor().CGColor
        self.team2_goal_picker.layer.borderWidth = 1
        self.team2_goal_picker.hidden = true
        self.team2_add_goal.hidden = true
        
        self.team1_goal_picker.dataSource = self
        self.team1_goal_picker.delegate = self
        
        self.team2_goal_picker.dataSource = self
        self.team2_goal_picker.delegate = self
        
        self.goalTable.dataSource = self
        self.goalTable.delegate = self
        
        self.goalTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
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
        
        if (component == 0) {
            if (row == 0) {
                return " - Buteur - "
            }
            else {
                return String(source[row - 1].number) + " - " + source[row - 1].lastname
            }
        } else if (component == 1) {
            if (row == 0) {
                return " - Passeur 1 - "
            }
            else {
                return String(source[row - 1].number) + " - " + source[row - 1].lastname
            }
        } else if (component == 2) {
            if (row == 0) {
                return " - Passeur 2 - "
            }
            else {
                return String(source[row - 1].number) + " - " + source[row - 1].lastname
            }
        }
        
        return ""
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let button = pickerView.tag == 0 ? team1_add_goal : team2_add_goal
        
        var enabled = false
        let index_goal:Int = pickerView.selectedRowInComponent(0)
        let index_assist1:Int = pickerView.selectedRowInComponent(1)
        let index_assist2:Int = pickerView.selectedRowInComponent(2)
        
        if (index_goal != 0) {
            if (index_assist1 != 0) {
                if (index_assist2 != 0) {
                    if (index_goal != index_assist1 && index_assist1 != index_assist2 && index_assist2 != index_goal) {
                        enabled = true;
                    }
                }
                else if (index_goal != index_assist1) {
                    enabled = true;
                }
            }
            else {
                if (index_assist2 == 0) {
                    enabled = true;
                }
            }
        }
        
        
        button.enabled = enabled
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.goalTable.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        let line = goals[indexPath.row]
        let goaler = line.2
        let assist1 = line.3
        let assist2 = line.4
        
        var label = "Période : " + String(line.0)
        label += ", " + line.1 + ", "
            
        label += goaler.lastname
        
        if (assist1 != nil) {
            label += ", " + assist1!.lastname
        }
        
        if (assist2 != nil) {
            label += ", " + assist2!.lastname
        }
        
        cell.textLabel?.text = label
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func startGameFields() {
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
        
        self.team1_goal_picker.hidden = false
        self.team1_add_goal.hidden = false
        self.team2_goal_picker.hidden = false
        self.team2_add_goal.hidden = false
    
        self.goalTable.hidden = false
        
        period_button.setTitle("Prochaine période", forState: .Normal)
        period.text = "1"
        
        
        self.team1_players.append(
            Player(
                number: (team1_p1_number.text == nil) ? Int(team1_p1_number.text!)! : 0,
                firstname: (team1_p1_firstname == nil) ? team1_p1_firstname.text! : "Player1_FirstName",
                lastname: (team1_p1_lastname == nil) ? team1_p1_lastname.text! : "Player1_LastName"
            )
        )
        self.team1_players.append(
            Player(
                number: (team1_p2_number.text == nil) ? Int(team1_p2_number.text!)! : 0,
                firstname: (team1_p2_firstname == nil) ? team1_p2_firstname.text! : "Player2_FirstName",
                lastname: (team1_p2_lastname == nil) ? team1_p2_lastname.text! : "Player2_LastName"
            )
        )
        self.team1_players.append(
            Player(
                number: (team1_p3_number.text == nil) ? Int(team1_p3_number.text!)! : 0,
                firstname: (team1_p3_firstname == nil) ? team1_p3_firstname.text! : "Player3_FirstName",
                lastname: (team1_p3_lastname == nil) ? team1_p3_lastname.text! : "Player3_LastName"
            )
        )
        self.team1_players.append(
            Player(
                number: (team1_p4_number.text == nil) ? Int(team1_p4_number.text!)! : 0,
                firstname: (team1_p4_firstname == nil) ? team1_p4_firstname.text! : "Player4_FirstName",
                lastname: (team1_p4_lastname == nil) ? team1_p4_lastname.text! : "Player4_LastName"
            )
        )
        self.team1_players.append(
            Player(
                number: (team1_p5_number.text == nil) ? Int(team1_p5_number.text!)! : 0,
                firstname: (team1_p5_firstname == nil) ? team1_p5_firstname.text! : "Player5_FirstName",
                lastname: (team1_p5_lastname == nil) ? team1_p5_lastname.text! : "Player5_LastName"
            )
        )
        self.team1_goal_picker.reloadAllComponents()
        
        self.team2_players.append(
            Player(
                number: (team2_p1_number.text == nil) ? Int(team2_p1_number.text!)! : 0,
                firstname: (team2_p1_firstname == nil) ? team2_p1_firstname.text! : "Player1_FirstName",
                lastname: (team2_p1_lastname == nil) ? team2_p1_lastname.text! : "Player1_LastName"
            )
        )
        self.team2_players.append(
            Player(
                number: (team2_p2_number.text == nil) ? Int(team2_p2_number.text!)! : 0,
                firstname: (team2_p2_firstname == nil) ? team2_p2_firstname.text! : "Player2_FirstName",
                lastname: (team2_p2_lastname == nil) ? team2_p2_lastname.text! : "Player2_LastName"
            )
        )
        self.team2_players.append(
            Player(
                number: (team2_p3_number.text == nil) ? Int(team2_p3_number.text!)! : 0,
                firstname: (team2_p3_firstname == nil) ? team2_p3_firstname.text! : "Player3_FirstName",
                lastname: (team2_p3_lastname == nil) ? team2_p3_lastname.text! : "Player3_LastName"
            )
        )
        self.team2_players.append(
            Player(
                number: (team2_p4_number.text == nil) ? Int(team2_p4_number.text!)! : 0,
                firstname: (team2_p4_firstname == nil) ? team2_p4_firstname.text! : "Player4_FirstName",
                lastname: (team2_p4_lastname == nil) ? team2_p4_lastname.text! : "Player4_LastName"
            )
        )
        self.team2_players.append(
            Player(
                number: (team2_p5_number.text == nil) ? Int(team2_p5_number.text!)! : 0,
                firstname: (team2_p5_firstname == nil) ? team2_p5_firstname.text! : "Player5_FirstName",
                lastname: (team2_p5_lastname == nil) ? team2_p5_lastname.text! : "Player5_LastName"
            )
        )
        self.team2_goal_picker.reloadAllComponents()
        
        
        self.updateFields()
        self.updateGoals()
    }
    
    func updateFields() {
        team1_p1_number.text = String(team1_players[0].number)
        team1_p1_firstname.text = team1_players[0].firstname
        team1_p1_lastname.text = team1_players[0].lastname
        
        team1_p2_number.text = String(team1_players[1].number)
        team1_p2_firstname.text = team1_players[1].firstname
        team1_p2_lastname.text = team1_players[1].lastname
        
        team1_p3_number.text = String(team1_players[2].number)
        team1_p3_firstname.text = team1_players[2].firstname
        team1_p3_lastname.text = team1_players[2].lastname
        
        team1_p4_number.text = String(team1_players[3].number)
        team1_p4_firstname.text = team1_players[3].firstname
        team1_p4_lastname.text = team1_players[3].lastname
        
        team1_p5_number.text = String(team1_players[4].number)
        team1_p5_firstname.text = team1_players[4].firstname
        team1_p5_lastname.text = team1_players[4].lastname
        
        
        
        team2_p1_number.text = String(team2_players[0].number)
        team2_p1_firstname.text = team2_players[0].firstname
        team2_p1_lastname.text = team2_players[0].lastname

        team2_p2_number.text = String(team2_players[1].number)
        team2_p2_firstname.text = team2_players[1].firstname
        team2_p2_lastname.text = team2_players[1].lastname
        
        team2_p3_number.text = String(team2_players[2].number)
        team2_p3_firstname.text = team2_players[2].firstname
        team2_p3_lastname.text = team2_players[2].lastname
        
        team2_p4_number.text = String(team2_players[3].number)
        team2_p4_firstname.text = team2_players[3].firstname
        team2_p4_lastname.text = team2_players[3].lastname
        
        team2_p5_number.text = String(team2_players[4].number)
        team2_p5_firstname.text = team2_players[4].firstname
        team2_p5_lastname.text = team2_players[4].lastname
    }
    
    func updateGoals() {
        team1_score.text = String(team1_global_score)
        
        team1_p1_goals.text = String(team1_players[0].goals)
        team1_p1_assists.text = String(team1_players[0].passes)
        
        team1_p2_goals.text = String(team1_players[1].goals)
        team1_p2_assists.text = String(team1_players[1].passes)
        
        team1_p3_goals.text = String(team1_players[2].goals)
        team1_p3_assists.text = String(team1_players[2].passes)
        
        team1_p4_goals.text = String(team1_players[3].goals)
        team1_p4_assists.text = String(team1_players[3].passes)
        
        team1_p5_goals.text = String(team1_players[4].goals)
        team1_p5_assists.text = String(team1_players[4].passes)
        
        team2_score.text = String(team2_global_score)
        
        team2_p1_goals.text = String(team2_players[0].goals)
        team2_p1_assists.text = String(team2_players[0].passes)
        
        team2_p2_goals.text = String(team2_players[1].goals)
        team2_p2_assists.text = String(team2_players[1].passes)
        
        team2_p3_goals.text = String(team2_players[2].goals)
        team2_p3_assists.text = String(team2_players[2].passes)
        
        team2_p4_goals.text = String(team2_players[3].goals)
        team2_p4_assists.text = String(team2_players[3].passes)
        
        team2_p5_goals.text = String(team2_players[4].goals)
        team2_p5_assists.text = String(team2_players[4].passes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func period_button_click(sender: UIButton) {
        let label_button:String = (period.text)!
        switch label_button {
        case "0":
            self.startGameFields()
            break
        case "1":
            period.text = "2"
            periodCount = 2
        case "2":
            period.text = "3"
            periodCount = 3
            period_button.setTitle("Terminer la partie", forState: .Normal)
            break
        case "3":
            period_button.enabled = false
            
            let alert = UIAlertController(title: "Alert", message: "test", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

            break
        default:
            print("Default case")
            break
        }
    }
    
    @IBAction func team1_add_goal_click(sender: UIButton) {
        var goaler: Player
        var assist1: Player?
        var assist2: Player?
        
        let index_goal:Int = team1_goal_picker.selectedRowInComponent(0)
        team1_global_score += 1
        team1_players[index_goal - 1].goals += 1;
        goaler = team1_players[index_goal - 1]
        
        let index_assist1:Int = team1_goal_picker.selectedRowInComponent(1)
        if(index_assist1 != 0) {
            team1_players[index_assist1 - 1].passes += 1;
            assist1 = team1_players[index_assist1 - 1]
        }
        
        let index_assist2:Int = team1_goal_picker.selectedRowInComponent(2)
        if(index_assist2 != 0) {
            team1_players[index_assist2 - 1].passes += 1;
            assist2 = team1_players[index_assist2 - 1]
        }
        
        updateGoals()
        
        // Add goal to list
        goals.append((periodCount, team1_name.text!, goaler, assist1, assist2))
        goalTable.reloadData()
        
        // Reset picker
        team1_goal_picker.selectRow(0, inComponent: 0, animated: false)
        team1_goal_picker.selectRow(0, inComponent: 1, animated: false)
        team1_goal_picker.selectRow(0, inComponent: 2, animated: false)
        team1_add_goal.enabled = false
    }
    
    @IBAction func team2_add_goal_click(sender: UIButton) {
        var goaler: Player
        var assist1: Player?
        var assist2: Player?

        let index_goal:Int = team2_goal_picker.selectedRowInComponent(0)
        team2_global_score += 1
        team2_players[index_goal - 1].goals += 1;
        goaler = team2_players[index_goal - 1]
        
        let index_assist1:Int = team2_goal_picker.selectedRowInComponent(1)
        if(index_assist1 != 0) {
            team2_players[index_assist1 - 1].passes += 1;
            assist1 = team2_players[index_assist1 - 1]
        }
        
        let index_assist2:Int = team2_goal_picker.selectedRowInComponent(2)
        if(index_assist2 != 0) {
            team2_players[index_assist2 - 1].passes += 1;
            assist2 = team2_players[index_assist2 - 1]
        }
        
        updateGoals()
        
        // Add goal to list
        goals.append((periodCount, team2_name.text!, goaler, assist1, assist2))
        goalTable.reloadData()
        
        // Reset picker
        team2_goal_picker.selectRow(0, inComponent: 0, animated: false)
        team2_goal_picker.selectRow(0, inComponent: 1, animated: false)
        team2_goal_picker.selectRow(0, inComponent: 2, animated: false)
        team2_add_goal.enabled = false
    }
}

