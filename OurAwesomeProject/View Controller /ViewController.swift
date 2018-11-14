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
        GameController.shared.startGame()
    }
    
    
    
    @IBAction func A1ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
    }
    
    @IBAction func A2ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
    }
    
    @IBAction func A3ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
    }
    
    @IBAction func B1ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
    }
    
    @IBAction func B2ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
       
    }
    
    @IBAction func B3ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
    }
    
    @IBAction func C1ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
    }
    
    @IBAction func C2ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
    }
    
    @IBAction func C3ButtonTapped(_ sender: UIButton) {
        squareTapped(button: sender)
        
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
    
    func squareTapped(button: UIButton) {
        // Exit function if tapped square already has value
        if let buttonText = button.titleLabel?.text {
            return
        } else {
            
            // Track whether current player is "X" or "O"
            guard let team = GameController.shared.currentPlayer?.team,
                let squareLocation = button.restorationIdentifier
                else {return}
            
            // Assign current team ("X" or "O") to dictionary key that matches button tapped
            GameController.shared.squareValueChanged(squareLocation, team: team)
            
            // Change title of button of the square to match current player team ("X" or "O")
            button.setTitle("\(team)", for: .normal)
            
        }
        
        GameController.shared.isThereAWinner()
        
        
//        GameController.shared.togglePlayer(game:)
    }
    
    
    
    @IBAction func clearTapped(_ sender: Any) {
        GameController.shared.clearBoardValues()
        A1Square.titleLabel?.text = nil
        A2Square.titleLabel?.text = nil
        A3Square.titleLabel?.text = nil
        B1Square.titleLabel?.text = nil
        B2Square.titleLabel?.text = nil
        B3Square.titleLabel?.text = nil
        C1Square.titleLabel?.text = nil
        C2Square.titleLabel?.text = nil
        C3Square.titleLabel?.text = nil
    }
    
    
    
    
}

