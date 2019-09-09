//
//  ViewController.swift
//  UICollectionViewTeamApp
//
//  Created by Juan Meza on 8/23/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId "
    
    let teams = [Team(image: "arsenal", name: "Arsenal"),
                Team(image: "chelsea", name: "Chelsea"),
                Team(image: "everton", name: "Everton"),
                Team(image: "leicester", name: "Leicester"),
                Team(image: "liverpool", name: "Liverpool"),
                Team(image: "mu", name: "M Uniter"),
                Team(image: "mc", name: "M City"),
                Team(image: "newcastle", name: "Newcastle"),
                Team(image: "tottenham", name: "Tottenham"),
                Team(image: "arsenal", name: "Arsenal"),
                Team(image: "chelsea", name: "Chelsea"),
                Team(image: "everton", name: "Everton"),
                Team(image: "leicester", name: "Leicester"),
                Team(image: "liverpool", name: "Liverpool"),
                Team(image: "mu", name: "M Uniter"),
                Team(image: "mc", name: "M City"),
                Team(image: "newcastle", name: "Newcastle"),
                Team(image: "tottenham", name: "Tottenham"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = UIColor(red: 44/255, green: 57/255, blue: 95/255, alpha: 1)
        
        navigationItem.title = "Teams"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/255, green: 48/255, blue: 80/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        
        collectionView.register(TeamCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count 
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath ) as! TeamCell
        
        cell.team = teams[indexPath.item]
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (view.frame.width / 3) - 16, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}

