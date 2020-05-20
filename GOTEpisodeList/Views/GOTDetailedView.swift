//
//  GOTDetailedView.swift
//  GOTEpisodeList
//
//  Created by Melinda Diaz on 5/20/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit
//TODO: Maybe put in stackview
class GOTDetailedView: UIView {
    
    var detailGotRef: GOTEpisode?
    
    public lazy var gotEpisodeImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "photo")
        iv.backgroundColor = .systemYellow //for testing
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    public lazy var gotTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = "GOT Title"
        label.textColor = .blue
        return label
    }()
    
    public lazy var gotEpisodeNumber: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = "GOT episode"
        label.textColor = .green
        return label
    }()
    public lazy var gotRunTime: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = "GOT RunTime"
        return label
    }()
    public lazy var gotAirDate: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = "GOT AirDate"
        return label
    }()
    
    public lazy var gotEpisodeDescription: UITextField = {
        let tf = UITextField()
        tf.font = UIFont.preferredFont(forTextStyle: .title3)
        tf.text = "GOT BLAH BLAH BLAH"
        tf.textAlignment = .left
        return tf
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
        setUpGOTEpisodeImageViewConstraints()
        setUpGOTTitleConstraints()
        setUpGOTEpisodeDescriptionConstraints()
        setUpGOTRunTimeConstraints()
        setUpGOTAirdateConstraints()
        setUpGOTEpisodeNumberConstraints()
        
    }
    private func setUpGOTEpisodeImageViewConstraints() {
        addSubview(gotEpisodeImageView)
        gotEpisodeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gotEpisodeImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            gotEpisodeImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            gotEpisodeImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            gotEpisodeImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.40)
            
        ])
    }
    
    private func setUpGOTTitleConstraints() {
        addSubview(gotTitle)
        gotTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gotTitle.topAnchor.constraint(equalTo: gotEpisodeImageView.bottomAnchor, constant: 8),
            gotTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            gotTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
            
        ])
    }
    
    private func setUpGOTEpisodeNumberConstraints() {
        addSubview(gotEpisodeNumber)
        gotEpisodeNumber.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gotEpisodeNumber.topAnchor.constraint(equalTo: gotTitle.bottomAnchor, constant: 8),
            gotEpisodeNumber.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), gotEpisodeNumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
            
        ])
    }
    private func setUpGOTRunTimeConstraints() {
        addSubview(gotRunTime)
        gotRunTime.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gotRunTime.topAnchor.constraint(equalTo: gotEpisodeNumber.bottomAnchor, constant: 8),
            gotRunTime.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), gotRunTime.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
            
        ])
    }
    
    private func setUpGOTAirdateConstraints() {
        addSubview(gotAirDate)
        gotAirDate.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gotAirDate.topAnchor.constraint(equalTo: gotRunTime.bottomAnchor, constant: 8),
            gotAirDate.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), gotAirDate.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
            
        ])
    }
    private func setUpGOTEpisodeDescriptionConstraints() {
        addSubview(gotEpisodeDescription)
        gotEpisodeDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gotEpisodeDescription.topAnchor.constraint(equalTo: gotAirDate.bottomAnchor, constant: 8),
            gotEpisodeDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), gotEpisodeDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            gotEpisodeDescription.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
            
        ])
    }
    
    func uploadData() {
       gotEpisodeImageView.image = UIImage(named: detailGotRef!.mediumImageID)
        gotTitle.text = detailGotRef?.name.description
        gotEpisodeNumber.text = "Season: \(detailGotRef!.season)   Episode: \(detailGotRef!.number)"
       gotRunTime.text = "Runtime:  \(detailGotRef!.runtime)"
        gotAirDate.text = "AirDate:  \(detailGotRef!.airdate)"
        gotEpisodeDescription.text = detailGotRef?.summary.description
        
    }
}
