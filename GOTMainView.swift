//
//  GOTMainView.swift
//  GOTEpisodeList
//
//  Created by Melinda Diaz on 5/20/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class GOTMainView: UIView {
    
  public lazy var gotTableView: UITableView = {
    let tb = UITableView()
    tb.backgroundColor = .cyan
      return tb
  }()
        
        
        override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            commonInit()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            commonInit()
        }
        
        private func commonInit() {
            setUpTableViewConstraints()
      
    }
    
    private func setUpTableViewConstraints() {
        addSubview(gotTableView)
           gotTableView.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
            gotTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
               gotTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
               gotTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
               gotTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
           
           
           ])
    
    }
}
