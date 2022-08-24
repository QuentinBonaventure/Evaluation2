//
//  Pokemon.swift
//  EVIOS2
//
//  Created by Quentin Bona on 23/08/2022.
//

import Foundation
import UIKit


struct Pokemon {
    var name : String
    var type : PokemonType
    var generation: Int
    var image : UIImage!
    var pokedex: Int
    var height: Int
    
    
}

enum PokemonType: String {
    case fire = "Fire"
    case water = "Water"
    case grass = "Grass"
    case flying = "Flying"
    case dragon = "Dragon"
    case poison = " Poison"
    
}

struct Color{
    var colorName: String
    var backGroundColor: UIColor
}
