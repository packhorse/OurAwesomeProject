//
//  ViewController.swift
//  OurAwesomeProject
//
//  Created by Porter Frazier on 11/13/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Player 1 and player 2 background colors.
    @IBOutlet weak var player1RedView: UIView!
    @IBOutlet weak var player2BlueView: UIView!
    @IBOutlet weak var A1Square: UIButton!
    @IBOutlet weak var A2Square: UIButton!
    @IBOutlet weak var A3Square: UIButton!
    @IBOutlet weak var B1Square: UIButton!
    @IBOutlet weak var B2Square: UIButton!
    @IBOutlet weak var B3Square: UIButton!
    @IBOutlet weak var C1Square: UIButton!
    @IBOutlet weak var C2Square: UIButton!
    @IBOutlet weak var C3Square: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player1RedView.layer.cornerRadius = 20
        player2BlueView.layer.cornerRadius = 20
        clearAll()
   
    }
    
    func clearAll(){
        A1Square.setTitle("", for: .normal)
        A2Square.setTitle("", for: .normal)
        A3Square.setTitle("", for: .normal)
        B1Square.setTitle("", for: .normal)
        B2Square.setTitle("", for: .normal)
        B3Square.setTitle("", for: .normal)
        C1Square.setTitle("", for: .normal)
        C2Square.setTitle("", for: .normal)
        C3Square.setTitle("", for: .normal)
    }
    
    
    
    
    @IBAction func clearTapped(_ sender: Any) {
        clearAll()
    }
    
    
    
    
}

