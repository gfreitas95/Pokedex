//
//  Pokemon.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import Foundation

struct Pokemon: Codable {
    
    var imagePokemon: String?
    var speed: String?
    var origin: String?
    var weight: Float!
    var calmFrantic: Float!
    var friendly: Float!
    var obedient: Float!
}
