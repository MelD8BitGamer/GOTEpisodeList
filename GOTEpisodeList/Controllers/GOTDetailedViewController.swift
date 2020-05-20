//
//  GOTDetailedViewController.swift
//  GOTEpisodeList
//
//  Created by Melinda Diaz on 5/20/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class GOTDetailedViewController: UIViewController {

    private let gotDetailedView = GOTDetailedView()
    
    override func loadView() {
           view = gotDetailedView
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 

}
