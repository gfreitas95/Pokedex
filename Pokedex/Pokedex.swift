//
//  PokManager.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import Foundation

class Pokedex {
    
    let retrieversLabrador = Pokemon(imagePokemon: "https://blackwhitepet.com.br/resources/img/racas-de-cachorro-labrador.jpg",
                                speed: "Retrievers (Labrador)",
                                origin: "United Kingdom",
                                weight: 0.3,
                                calmFrantic: 0.9,
                                friendly: 1,
                                obedient: 0.8)
    
    let germanShepherdDogs = Pokemon(imagePokemon: "https://www.clubeparacachorros.com.br/wp-content/uploads/2018/08/pastor-alemao-capa-preta.jpg",
                            speed: "German Shepherd",
                            origin: "Germany",
                            weight: 0.2,
                            calmFrantic: 0.8,
                            friendly: 0.7,
                            obedient: 1)
    
    let retrieversGolden = Pokemon(imagePokemon: "https://vetsmart-parsefiles.s3.amazonaws.com/3327f2ceb6e24aad97bdb7dfe824fd9c_breed.jpg",
                            speed: "Golden Retriever",
                            origin: "United Kingdom",
                            weight: 0.3,
                            calmFrantic: 0.9,
                            friendly: 1,
                            obedient: 0.8)
    
    let frenchBulldogs = Pokemon(imagePokemon: "https://vetstreet.brightspotcdn.com/dims4/default/abbb834/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F66%2F74b3b0a0d411e0a2380050568d634f%2Ffile%2FFrench-Bulldog-2-645mk062111.jpg",
                            speed: "French Bulldog",
                            origin: "France",
                            weight: 0.7,
                            calmFrantic: 0.2,
                            friendly: 0.7,
                            dogObedient: 0.1)
    
    let bulldogs = Pokemon(imagePokemon: "https://i.pinimg.com/originals/7f/40/7e/7f407e353da065fe1d5d14761f3551e1.jpg",
                        speed: "Bulldog",
                        origin: "England",
                        weight: 0.6,
                        calmFrantic: 0.5,
                        friendly: 0.8,
                        obedient: 0.2)
    
    let beagles = Pokemon(imagePokemon: "https://tudosobrecachorros.com.br/wp-content/uploads/Beagle-03.jpg",
                        speed: "Beagle",
                        origin: "United Kingdom",
                        weight: 0.8,
                        calmFrantic: 0.2,
                        friendly: 0.7,
                        obedient: 0.4)
    
    let poodles = Pokemon(imagePokemon: "https://www.adoropets.com.br/wp-content/uploads/2018/02/poodle-pelo-liso.jpg",
                        speed: "Poodle",
                        origin: "Germany",
                        weight: 0.7,
                        calmFrantic: 0.4,
                        friendly: 0.6,
                        obedient: 0.6)
    
    func pokemon() -> Array<Pokemon> {
        
        return [retrieversLabrador, germanShepherdDogs, retrieversGolden, frenchBulldogs, bulldogs, beagles, poodles]
    }
    
}
