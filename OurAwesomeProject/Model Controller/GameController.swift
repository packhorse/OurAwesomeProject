//
//  SquareController.swift
//  OurAwesomeProject
//
//  Created by Porter Frazier on 11/13/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import UIKit

class GameController {
    
    // MARK: - SHARED, SOURCE
    
    // Shared
    static let shared = GameController()
    
    // Source of truth
    var game: Game?
    
    var currentPlayer: Player?
    var playerHasWon = false
    let maxMoves = 9
    var currentMove = 1
    
    // MARK: - SQUARES DICTIONARY
    
    // Dictionary to store square keys
    var squares: [String : Square] = [
        "a1" : Square(team: .empty),
        "a2" : Square(team: .empty),
        "a3" : Square(team: .empty),
        "b1" : Square(team: .empty),
        "b2" : Square(team: .empty),
        "b3" : Square(team: .empty),
        "c1" : Square(team: .empty),
        "c2" : Square(team: .empty),
        "c3" : Square(team: .empty)
    ]
    
    // MARK: - FUNCTIONS
    
    func startGame () {
        let player1 = Player(team: .x)
        let player2 = Player(team: .o)
        let newGame = Game(squares: squares, players: [player1, player2])
        self.game = newGame
    }
    
    func squareTapped (button: UIButton) {
        
        // Exit function if tapped square already has value
        if button.titleLabel?.text != "" {
            return
            
        } else {
            
            // Track whether current player is "X" or "O"
            guard let team = currentPlayer?.team else {return}
            
            // Change title of button of the square to match current player team ("X" or "O")
            button.setTitle("\(team)", for: .normal)
            
            // Assign current team ("X" or "O") to dictionary key that matches button tapped
            squares[button.restorationIdentifier ?? ""] = Square(team: team)
        }
    }
        
    func isThereAWinner (game: Game) {
        
        guard var a1 = squares["a1"],
        var a2 = squares["a2"],
        var a3 = squares["a3"],
        var b1 = squares["b1"],
        var b2 = squares["b2"],
        var b3 = squares["b3"],
        var c1 = squares["c1"],
        var c2 = squares["c2"],
        var c3 = squares["c3"] else {return}
            
        if (a1.team == a2.team && a2.team == a3.team) || (b1.team == b2.team && b2.team == b3.team) || (c1.team == c2.team && c2.team == c3.team) || (a1.team == b1.team && b1.team == c1.team) || (a2.team == b2.team && b2.team == c2.team) || (a3.team == b3.team && b3.team == c3.team) || (a1.team == b2.team && b2.team == c3.team) || (c1.team == b2.team && b2.team == a3.team) {
            
            // If there is an equal trio, declare a winner
            let winnerAnnouncement = "\(currentPlayer) won the game!"
        }
        
        checkIfTie(squares: squares)
        
        // Otherwise toggle player
        if currentPlayer == game.players.first {
            currentPlayer = game.players.last
        } else {
            currentPlayer = game.players.first
        }
    }
    
    func checkIfTie(squares: [String : Square]) {
        for (_, value) in squares {
            if value.team == Team.o || value.team == Team.x {
                return
            }
            let winnerAnnouncement = "The game was a tie."
        }
    }
    
    func clearBoard () {
        
        // Reset all dictionary values back to .empty
        var squares: [String : Square] = [
            "a1" : Square(team: .empty),
            "a2" : Square(team: .empty),
            "a3" : Square(team: .empty),
            "b1" : Square(team: .empty),
            "b2" : Square(team: .empty),
            "b3" : Square(team: .empty),
            "c1" : Square(team: .empty),
            "c2" : Square(team: .empty),
            "c3" : Square(team: .empty)
        ]
    }
}
