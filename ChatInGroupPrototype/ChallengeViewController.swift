//
//  ChallengeViewController.swift
//  ChatInGroupPrototype
//
//  Created by Caspar van Boom on 21/11/2019.
//  Copyright © 2019 Caspar van Boom. All rights reserved.
//

import UIKit

class ChallengeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var name: String?
    var group: String? {
        didSet {
            navigationItem.title = group
        }
    }
    var challenges = ["Challenge 1...", "Challenge 2...", "Challenge 3..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Chat with group", style: .done, target: self, action: #selector(createChatView))
        
    }
    
    @objc func createChatView() {
        performSegue(withIdentifier: "chatview", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challenges.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChallengeViewCell
        
        cell.challengeLabel.text = challenges[indexPath.item]
        return cell
    }
}

class ChallengeViewCell: UITableViewCell {
    
    @IBOutlet weak var challengeLabel: UILabel!
    @IBOutlet weak var sendInviteButton: UIButton!
    
}
