//
//  PokManager.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

class Pokedex {
    
    let pikachu = Pokemon(imagePokemon: #imageLiteral(resourceName: "pikachu"),
                                speed: "Retrievers (Labrador)",
                                origin: "United Kingdom",
                                weight: 0.3,
                                calmFrantic: 0.9,
                                friendly: 1,
                                obedient: 0.8)
    
    let slowbro = Pokemon(imagePokemon: #imageLiteral(resourceName: "slowbro"),
                            speed: "German Shepherd",
                            origin: "Germany",
                            weight: 0.2,
                            calmFrantic: 0.8,
                            friendly: 0.7,
                            obedient: 1)
    
    let growlight = Pokemon(imagePokemon: #imageLiteral(resourceName: "growlight"),
                            speed: "Golden Retriever",
                            origin: "United Kingdom",
                            weight: 0.3,
                            calmFrantic: 0.9,
                            friendly: 1,
                            obedient: 0.8)
    
    let mewtwo = Pokemon(imagePokemon: #imageLiteral(resourceName: "mewtwo"),
                            speed: "French Bulldog",
                            origin: "France",
                            weight: 0.7,
                            calmFrantic: 0.2,
                            friendly: 0.7,
                            obedient: 0.1)
    
    let gloom = Pokemon(imagePokemon: #imageLiteral(resourceName: "gloom"),
                        speed: "Bulldog",
                        origin: "England",
                        weight: 0.6,
                        calmFrantic: 0.5,
                        friendly: 0.8,
                        obedient: 0.2)
    
    let raticate = Pokemon(imagePokemon: #imageLiteral(resourceName: "raticate"),
                        speed: "Beagle",
                        origin: "United Kingdom",
                        weight: 0.8,
                        calmFrantic: 0.2,
                        friendly: 0.7,
                        obedient: 0.4)
    
    let snorlax = Pokemon(imagePokemon: #imageLiteral(resourceName: "snorlax"),
                        speed: "Poodle",
                        origin: "Germany",
                        weight: 0.7,
                        calmFrantic: 0.4,
                        friendly: 0.6,
                        obedient: 0.6)
    
    func pokemon() -> Array<Pokemon> {
        
        return [snorlax, pikachu, slowbro, growlight, mewtwo, raticate, gloom]
    }
}
