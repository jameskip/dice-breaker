//
//  ViewController.swift
//  Dicee
//
//  Created by James Kip on 5/8/19.
//  Copyright © 2019 James Kip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func rollDice () {
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        
        print(randomDiceIndex1, randomDiceIndex2)
        
        diceImageView1.image  = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image  = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
}

