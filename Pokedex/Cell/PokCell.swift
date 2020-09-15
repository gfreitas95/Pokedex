//
//  PokCell.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

class PokCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView?
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var content: UIView!
    

    func loadUI(item: Pokemon) {
        
        image?.image = item.pokeImage
        lblName?.text = item.name
        lblType?.text = item.type
    }
}
