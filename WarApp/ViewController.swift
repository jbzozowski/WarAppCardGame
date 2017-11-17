//
//  ViewController.swift
//  WarApp
//
//  Created by Julius Bzozowski on 11/15/17.
//  Copyright © 2017 Julius Bzozowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetScore(_ sender: Any) {
        
        // Reset the image views
        leftImageView.image = UIImage(named: "back")
        
        rightImageView.image = UIImage(named: "back")
        
        // Update the Score
        leftScore = 0
        
        // Update the label
        leftScoreLabel.text = String(leftScore)
        
        // Update the score
        rightScore = 0
        
        // Update the label
        rightScoreLabel.text = String(rightScore)
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        
        if leftRandomNumber > rightRandomNumber {
            
           // Update the Score
            leftScore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber {
            
            // Update the score
            rightScore += 1
            
            // Update the label
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    

}

