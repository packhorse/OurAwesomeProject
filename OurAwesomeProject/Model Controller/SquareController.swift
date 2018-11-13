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
    
    // Source
    var squares = [Square]
    
    static var squares: [Square] {
        let a1 = Square(value: "")
        let a2 = Square(value: "")
        let a3 = Square(value: "")
        let b1 = Square(value: "")
        let b2 = Square(value: "")
        let b3 = Square(value: "")
        let c1 = Square(value: "")
        let c2 = Square(value: "")
        let c3 = Square(value: "")
        return []
    }
}
