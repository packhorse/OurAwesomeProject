//
//  Game.swift
//  OurAwesomeProject
//
//  Created by Porter Frazier on 11/13/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation

struct Game {
    //This array of squares will hold 9 squares
    var squares: [Square]
    // This array will hold the first player and the current player
    var players: [Player]
}

enum Team: String {
    case x = "X"
    case o = "O"
    
}

struct Square {
    var team: Team?
    
}

struct Player {
    let team: Team
    var currentPlayers: String
}
