//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by André Simões on 13/11/15.
//  Copyright © 2015 André Simões. All rights reserved.
//

import Foundation

// let characters = Array(("0123456789abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ").characters)

let abc = Array(("!\"#$%&/()=?0123456789abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ").characters)



func generateRandomString(lenght: Int) -> String {
    
    var string = ""
    
    for _ in 0..<lenght {
        string.append(generateRandomCharacter())
    }
    
    return string
    
}


func generateRandomCharacter() -> Character {
    // Create a random index into the characters array
    let index = Int(arc4random_uniform(UInt32(abc.count)))
    
    // Get and return a random character
    let character = abc[index]
    return character
}