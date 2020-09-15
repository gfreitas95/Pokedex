//
//  ViewController.swift
//  Pokedex
//
//  Created by Gustavo on 31/07/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
      
    var pokemon: Pokemon!
    var pokedex: Pokedex!
    var arrayPokemon: Array<Pokemon> = []
      
    @IBOutlet weak var weightProgress: UIProgressView?
    @IBOutlet weak var heightProgress: UIProgressView?
    @IBOutlet weak var friendlyProgress: UIProgressView?
    @IBOutlet weak var obedientProgress: UIProgressView?
    @IBOutlet weak var collectionView: UICollectionView!
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
          
        collectionView?.reloadData()
        collectionView.delegate = self
        collectionView.dataSource = self
        pokedex = Pokedex.init()
        arrayPokemon = pokedex.pokemon()
    }
      
    // MARK: - UICollectionView Delegate / Datasource
      
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPokemon.count
    }
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          
        let friend = arrayPokemon[indexPath.item]
          
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokCellId", for: indexPath) as! PokCell
        cell.loadUI(item: friend)
        return cell
    }
      
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          
        let friendSelect = arrayPokemon[indexPath.item]
    
        weightProgress?.setProgress(friendSelect.weight, animated: true)
        heightProgress?.setProgress(friendSelect.height, animated: true)
        friendlyProgress?.setProgress(friendSelect.friendly, animated: true)
        obedientProgress?.setProgress(friendSelect.obedient, animated: true)
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8 , bottom: 50, right: 8)
    }
      
    // MARK: - IBActions
      
    @IBAction func learnMore() {
          
        if #available(iOS 13.0, *) {
            let moreInfoView = self.storyboard?.instantiateViewController(identifier: "MoreInfoView") as! MoreInfoViewController
            
            self.present(moreInfoView, animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: "MoreInfoView", bundle: nil)
            let moreInfoView = storyboard.instantiateViewController(withIdentifier: "MoreInfoView")
            self.present(moreInfoView, animated: true)
        }
    }
}

