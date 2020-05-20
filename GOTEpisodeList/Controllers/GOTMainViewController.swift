//
//  ViewController.swift
//  GOTEpisodeList
//
//  Created by Melinda Diaz on 5/20/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class GOTMainViewController: UIViewController {

    private let gotView = GOTMainView()
    
    override func loadView() {
        view = gotView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

