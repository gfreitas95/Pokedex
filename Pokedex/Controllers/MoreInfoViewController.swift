//
//  MoreInfoViewController.swift
//  Pokedex
//
//  Created by Gustavo on 10/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet var pokView: UIView?
    @IBOutlet var lblText: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        showForm()
    }
    

    @IBAction func backToHome() {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func showForm() {
        
        pokView?.alpha = 0
        lblText?.alpha = 0
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [], animations: {[weak self] in
        self?.pokView?.alpha = 1
        self?.pokView?.frame.size.height *= 1
        self?.pokView?.frame.size.width *= 1
        }, completion: nil)
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [], animations: {[weak self] in
        self?.lblText?.alpha = 1
        self?.lblText?.frame.size.height *= 1
        self?.lblText?.frame.size.width *= 1
        }, completion: nil)
    }
}
