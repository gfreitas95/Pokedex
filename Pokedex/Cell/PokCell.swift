//
//  PokCell.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit
import Kingfisher

class PokCell: UICollectionViewCell {
    
    @IBOutlet var image: UIImageView?
    @IBOutlet var lableSpeed: UILabel?
    @IBOutlet var lableOrigin: UILabel?
    
    func loadUI(item: Pokemon) {
        
        image?.image = item.imagePokemon
        lableSpeed?.text = item.speed
        lableOrigin?.text = item.origin
    }
}
