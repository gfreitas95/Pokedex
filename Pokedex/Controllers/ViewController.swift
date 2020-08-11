//
//  ViewController.swift
//  Pokedex
//
//  Created by Gustavo on 31/07/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
      
    var pokemon: Pokemon!
    var pokedex: Pokedex!
    var arrayPokemon: Array<Pokemon> = []
      
    @IBOutlet var weightProgress: UIProgressView!
    @IBOutlet var calmProgress: UIProgressView!
    @IBOutlet var friendlyProgress: UIProgressView!
    @IBOutlet var obedientProgress: UIProgressView!
    @IBOutlet var collectionView: UICollectionView!
      
      
    override func viewDidLoad() {
        super.viewDidLoad()
          
        pokedex = Pokedex.init()
        arrayPokemon = pokedex.pokemon()
        collectionView?.reloadData()
    }
      
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
          
    }
      
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
          
    }
      
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
          
    }
      
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
          
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
        calmProgress?.setProgress(friendSelect.calmFrantic, animated: true)
        friendlyProgress?.setProgress(friendSelect.friendly, animated: true)
        obedientProgress?.setProgress(friendSelect.obedient, animated: true)
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 200, height: 200)
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
            // Fallback on earlier versions
        }
    }
}

