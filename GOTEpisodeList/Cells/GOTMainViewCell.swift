//
//  GOTMainViewCell.swift
//  GOTEpisodeList
//
//  Created by Melinda Diaz on 5/20/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class GOTMainViewCell: UITableViewCell {

       public lazy var gotImage: UIImageView = {
         let iv = UIImageView()
         iv.image = UIImage(systemName: "photo")
         iv.backgroundColor = .systemYellow //for testing
         iv.contentMode = .scaleAspectFill
         return iv
     }()
     
     public lazy var episodeTitle: UILabel = {
         let label = UILabel()
         label.numberOfLines = 2
         //using this UItextile is better for the user so that they can change the font size to make it bigger or smaller
         label.font = UIFont.preferredFont(forTextStyle: .headline)
         label.text = "Winterfell"
         return label
     }()
     
     public lazy var episodeNumber: UILabel = {
         let label = UILabel()
         label.numberOfLines = 3
         //subheadline is good fo the same as above
         label.font = UIFont.preferredFont(forTextStyle: .subheadline)
         label.text = "Episode Blah"
         return label
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
            setUpGOTImageViewConstraint()
            setUpEpisodeTitleConstraint()
            setUpEpisodeNumberConstraints()
    }
    
    private func setUpGOTImageViewConstraint() {
           addSubview(gotImage)
           gotImage.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               gotImage.topAnchor.constraint(equalTo: topAnchor, constant: 20),
               gotImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
               gotImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3),
               //because it is equal to the height that made it into a square
               gotImage.widthAnchor.constraint(equalTo: heightAnchor)//fix
           ])
       }
       
       private func setUpEpisodeTitleConstraint() {
           addSubview(episodeTitle)
           episodeTitle.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               //you want the top of the title is equal to the top to the image
            episodeTitle.topAnchor.constraint(equalTo: gotImage.topAnchor),
               episodeTitle.leadingAnchor.constraint(equalTo: gotImage.trailingAnchor, constant: 8),
               episodeTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
           ])
       }
       
       private func setUpEpisodeNumberConstraints() {
           addSubview(episodeNumber)
        episodeNumber.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               episodeNumber.leadingAnchor.constraint(equalTo: episodeTitle.leadingAnchor),
               episodeNumber.trailingAnchor.constraint(equalTo: episodeTitle.trailingAnchor),
               episodeNumber.topAnchor.constraint(equalTo: episodeTitle.bottomAnchor, constant: 8)
           ])
       }
}
