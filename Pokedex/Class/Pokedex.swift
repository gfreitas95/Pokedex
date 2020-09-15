//
//  PokManager.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

class Pokedex {
    
    let pikachu = Pokemon(pokeImage: #imageLiteral(resourceName: "pikachu"), name: "Pikachu", type: "Electric", Abilities: "Static", Category: "Mouse", Weaknesses: "Ground", weight: 6.0, height: 0.4, friendly: 0.5, obedient: 0.3)
  
    let squirtle = Pokemon(pokeImage: #imageLiteral(resourceName: "squirtle"), name: "Squirtle", type: "Water", Abilities: "Torrent", Category: "Turtle", Weaknesses: "Electric", weight: 9.0, height: 0.5, friendly: 0.5, obedient: 0.4)
    
    let bulbasaur = Pokemon(pokeImage: #imageLiteral(resourceName: "bulbasaur"), name: "Bulbasaur", type: "Grass", Abilities: "Overgrow", Category: "Seed", Weaknesses: "Fire", weight: 6.9, height: 0.7, friendly: 0.5, obedient: 0.5)

    let charizard = Pokemon(pokeImage: #imageLiteral(resourceName: "charizard"), name: "Charizard", type: "Fire", Abilities: "Blaze", Category: "Flame", Weaknesses: "Water", weight: 90.5, height: 1.7, friendly: 0.2, obedient: 0.1)

    let slowbro = Pokemon(pokeImage: #imageLiteral(resourceName: "slowbro"), name: "Slowbro", type: "Psychic", Abilities: "Oblivious", Category: "Hermit Crab", Weaknesses: "Ghost", weight: 78.5, height: 1.6, friendly: 0.3, obedient: 0.3)

    let arcanine = Pokemon(pokeImage: #imageLiteral(resourceName: "arcanine"), name: "Arcanine", type: "Fire", Abilities: "Flash Fire", Category: "Legendary", Weaknesses: "Water", weight: 155.0, height: 1.9, friendly: 0.4, obedient: 0.4)

    let mewtwo = Pokemon(pokeImage: #imageLiteral(resourceName: "mewtwo"), name: "Mewtwo", type: "Psychic", Abilities: "Pressure", Category: "Genetic", Weaknesses: "Ghost", weight: 122.0, height: 2.0, friendly: 0.1, obedient: 0.1)

    let gloom = Pokemon(pokeImage: #imageLiteral(resourceName: "gloom"), name: "Gloom", type: "Grass", Abilities: "Chlorophyll", Category: "Weed", Weaknesses: "Fire", weight: 8.6, height: 0.8, friendly: 0.4, obedient: 0.3)

    let raticate = Pokemon(pokeImage: #imageLiteral(resourceName: "raticate"), name: "Raticate", type: "Normal", Abilities: "Guts", Category: "Mouse", Weaknesses: "Fighting", weight: 18.5, height: 0.7, friendly: 0.2, obedient: 0.2)

    let snorlax = Pokemon(pokeImage: #imageLiteral(resourceName: "snorlax"), name: "Snorlax", type: "Normal", Abilities: "Thick Fat", Category: "Sleeping", Weaknesses: "Fighting", weight: 460.0, height: 2.1, friendly: 0.5, obedient: 0.2)
    
    func pokemon() -> Array<Pokemon> {
        
        return [pikachu, squirtle, bulbasaur, charizard, slowbro, arcanine, mewtwo, snorlax, gloom, raticate]
    }
}
