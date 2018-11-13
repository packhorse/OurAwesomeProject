//
//  ViewController.swift
//  OurAwesomeProject
//
//  Created by Porter Frazier on 11/13/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1RedView: UIView!
    @IBOutlet weak var player2BlueView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player1RedView.layer.cornerRadius = 20
        player2BlueView.layer.cornerRadius = 20
    }


}

