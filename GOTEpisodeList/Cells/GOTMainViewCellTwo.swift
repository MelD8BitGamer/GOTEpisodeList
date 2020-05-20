//
//  GOTMainViewCellTwo.swift
//  GOTEpisodeList
//
//  Created by Melinda Diaz on 5/20/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit


class GOTMainViewCellTwo: UITableViewCell {
       public lazy var gotImage2: UIImageView = {
         let iv = UIImageView()
         iv.image = UIImage(systemName: "photo")
         iv.backgroundColor = .systemYellow //for testing
         iv.contentMode = .scaleAspectFill
         return iv
     }()
     
     public lazy var episodeTitle2: UILabel = {
         let label = UILabel()
         label.numberOfLines = 2
         //using this UItextile is better for the user so that they can change the font size to make it bigger or smaller
         label.font = UIFont.preferredFont(forTextStyle: .headline)
         label.text = "Winterfell"
         return label
     }()
     
     public lazy var episodeNumber2: UILabel = {
         let label = UILabel()
         label.numberOfLines = 3
         //subheadline is good fo the same as above
         label.font = UIFont.preferredFont(forTextStyle: .subheadline)
         label.text = "Episode Blah"
         return label
     }()
        
  
    
      required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        commonInit()
        }
//OK since we are dealing with TableViews we need to initialize it or you will get a error stating :Must call a designated initializer of the superclass 'UITableViewCell'
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
            commonInit()
        }
        
        private func commonInit() {
            setUpEvenGOTImageViewConstraint()
            setUpEvenEpisodeTitleConstraint()
            setUpEvenEpisodeNumberConstraints()
    }
    
    private func setUpEvenGOTImageViewConstraint() {
           
           gotImage2.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               gotImage2.topAnchor.constraint(equalTo: topAnchor, constant: 20),
               gotImage2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
               gotImage2.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3),
             
               gotImage2.widthAnchor.constraint(equalTo: heightAnchor)//fix
           ])
       }
       
       private func setUpEvenEpisodeTitleConstraint() {
          addSubview(episodeTitle2)
           episodeTitle2.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
           
            episodeTitle2.topAnchor.constraint(equalTo: gotImage2.topAnchor),
               episodeTitle2.leadingAnchor.constraint(equalTo: gotImage2.trailingAnchor, constant: 8),
               episodeTitle2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
           ])
       }
       
       private func setUpEvenEpisodeNumberConstraints() {
           addSubview(episodeNumber2)
        episodeNumber2.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               episodeNumber2.leadingAnchor.constraint(equalTo: episodeTitle2.leadingAnchor),
               episodeNumber2.trailingAnchor.constraint(equalTo: episodeTitle2.trailingAnchor),
               episodeNumber2.topAnchor.constraint(equalTo: episodeTitle2.bottomAnchor, constant: 8)
           ])
       }
}
