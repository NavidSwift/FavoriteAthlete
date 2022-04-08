//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Navid on 1/2/22.
//

import UIKit

class AthleteFormViewController: UIViewController {

    var athlete : Athlete?
    
    init?(coder: NSCoder,athlete: Athlete?){
        self.athlete = athlete
        super.init(coder: coder)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateView()
    }
    
    func updateView(){
        
    guard let athlete = athlete else {return}
        nameTextField.text = athlete.name
        ageTextField.text = String(athlete.age)
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team

    }
 
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        guard let name = nameTextField.text,let ageString = ageTextField.text,let age = Int(ageString),let league = leagueTextField.text,let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, team: team, league: league)
        
        performSegue(withIdentifier: "unwindToTable", sender: self)
        
    }
    
}
