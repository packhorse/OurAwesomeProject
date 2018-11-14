//
//  SquareController.swift
//  OurAwesomeProject
//
//  Created by Porter Frazier on 11/13/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation

class SquareController {
    
    // MARK: - SHARED, SOURCE
    
    // Shared
    static let shared = SquareController()
    
    
    // Source of truth
    lazy var squares: [Square] = {
        let a1 = Square(team: Team(rawValue: ""))
        let a2 = Square(team: Team(rawValue: ""))
        let a3 = Square(team: Team(rawValue: ""))
        let b1 = Square(team: Team(rawValue: ""))
        let b2 = Square(team: Team(rawValue: ""))
        let b3 = Square(team: Team(rawValue: ""))
        let c1 = Square(team: Team(rawValue: ""))
        let c2 = Square(team: Team(rawValue: ""))
        let c3 = Square(team: Team(rawValue: ""))
        
        return[a1, a2, a3, b1, b2, b3, c1, c2, c3]
    }()
    
    
    
    // MARK: - FUNCTIONS
    
    func squareTapped () {
        
        // Determine currentPlayer
        
        
        
        
        // Exit function if tapped square already has value
        
        // Change value of tappedSquare to value of currentPlayer
        
    }
        
    func isThereAWinner () {
        
        // Check the eight possible trios to see if any are equal
        
        // A1 = A2 = A3
        // B1 = B2 = B3
        // C1 = C2 = C3
        // A1 = B1 = C1
        // A2 = B2 = C2
        // A3 = B3 = C3
        // A1 = B2 = C3
        // C2 = B2 = C1
        
        // If there is an equal trio, declare a winner
        
        // if all squares have a value, call the game as a tie
        
        // Otherwise toggle player
    }
    
    func clearBoard () {
        
        // Clear VC
        
        // Reset player and square values
    }
}

