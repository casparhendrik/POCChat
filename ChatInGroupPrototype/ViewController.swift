//
//  ViewController.swift
//  ChatInGroupPrototype
//
//  Created by Caspar van Boom on 21/11/2019.
//  Copyright © 2019 Caspar van Boom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var choice: String?
    
    @IBOutlet weak var naamLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseNutrition(_ sender: Any) {
        choice = "Voeding"
    }
    
    @IBAction func chooseMovement(_ sender: Any) {
        choice = "Beweging"
    }
    
    @IBAction func chooseRelaxation(_ sender: Any) {
        choice = "Ontspanning"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ChallengeViewController {
            let destination = segue.destination as! ChallengeViewController
            destination.group = self.choice
            destination.name = self.naamLabel.text
        }
    }
    
    
}

