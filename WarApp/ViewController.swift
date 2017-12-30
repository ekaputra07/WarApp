//
//  ViewController.swift
//  WarApp
//
//  Created by Eka Putra on 12/30/17.
//  Copyright © 2017 Eka Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var leftScore: Int = 0
    var rightScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDealClick(_ sender: Any) {
        let leftRand = arc4random_uniform(13) + 2
        let rightRand = arc4random_uniform(13) + 2
        leftCard.image = UIImage(named: "card\(leftRand)")
        rightCard.image = UIImage(named: "card\(rightRand)")
        
        if leftRand > rightRand{
            leftScore += 1
        }else if leftRand < rightRand{
            rightScore += 1
        }
        
        playerScoreLabel.text = String(leftScore)
        cpuScoreLabel.text = String(rightScore)
    }
    
}

