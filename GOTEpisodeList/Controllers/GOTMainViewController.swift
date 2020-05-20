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
    
    var gotRef = GOTEpisode.getSection()
    
    override func loadView() {
        view = gotView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gotView.gotTableView.dataSource = self
        
    }


}

extension GOTMainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gotRef[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let episode = gotRef[indexPath.row]
            let detailedVC = ArticleDetailViewController()//(article: article) when you r article becomes private it is better for encapsulation
            //TODO: we will be using initializers as dependency injection mechanisms
            //11:53am
            articleDVC.article = article
            
            
            //step3: setting up data persistence and its delegate
            //if you run the app click on the cell you will see the problem and nothing will happens because you did embed the navigation controller in the TABBAR.
            articleDVC.dataPersistence = dataPersistence
            navigationController?.pushViewController(articleDVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section % 2 == 1 {
//        guard let cell = gotTableView.dequeueReusableCell(withIdentifier: "oddSeason", for: indexPath) as? OddTableViewCell else {
//            return UITableViewCell()
//        }
//        cell.oddCellImage.image = UIImage(named: gotRef[indexPath.section][indexPath.row].mediumImageID)
//        cell.oddTitleLabel.text = gotRef[indexPath.section][indexPath.row].name
//        cell.oddEpisodeLabel.text = "S:\(gotRef[indexPath.section][indexPath.row].season), E: \(gotRef[indexPath.section][indexPath.row].number)"
//        return cell
//        } else {
//            guard let cell2 = gotTableView.dequeueReusableCell(withIdentifier: "evenSeason", for: indexPath) as? EvenTableViewCell else {
//                return UITableViewCell()
//            }
//            cell2.evenTitleLabel.text = gotRef[indexPath.section][indexPath.row].name
//            cell2.evenSeasonImage.image = UIImage(named:gotRef[indexPath.section][indexPath.row].mediumImageID)
//            cell2.evenEpisodeLabel.text = "S:\(gotRef[indexPath.section][indexPath.row].season), E:\(gotRef[indexPath.section][indexPath.row].number)"
//            return cell2
//        }
        }
}
