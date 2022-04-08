//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Navid on 1/2/22.
//

import Foundation

struct Athlete {
    
    var name : String
    var age : Int
    var team : String
    var league : String
    
    var description : String{
        "\(name) has \(age) old and plays for the \(team) in \(league)"
    }
}
