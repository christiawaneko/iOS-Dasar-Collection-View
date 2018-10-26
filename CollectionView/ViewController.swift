//
//  ViewController.swift
//  CollectionView
//
//  Created by Christiawan Eko Saputro on 11/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    var bendera : [ String ] = [
        "Bendera-Brunei-Darusalam",
        "bendera-Kamboja",
        "Bendera-Indonesia",
        "Bendera-Laos",
        "Bendera-Malaysia",
        "Bendera-Myanmar",
        "Bendera-Filipina",
        "Bendera-Singapura",
        "Bendera-Thailand",
        "Bendera-Timor-Leste",
        "Bendera-Vietnam"
        
    ]
    
    var negara : [ String ] = [
        "Brunei Darusalam",
        "Kamboja",
        "Indonesia",
        "Laos",
        "Malaysia",
        "Myanmar",
        "Filipina",
        "Singapura",
        "Thailand",
        "Timor Leste",
        "Vietnam"
    ]
    
    var deskripsi : [ String ] = [
        "( Member since 1984 )\n Ministry of Education - Brunei Darussalam",
        "( Member since 1968 )\n Ministry of Education, Youth and Sport - Cambodia",
        "( Member since 1965 )\n Ministry of Education and Culture - Indonesia",
        "( Member since 1965 )\n Ministry of Education and Sports - Lao PDR",
        "( Member since 1965 )\n Ministry of Education - Malaysia",
        "( Member since 1998 )\n Ministry of Education - Myanmar",
        "( Member since 1965 )\n Department of Education - Philippines",
        "( Member since 1965 )\n Ministry of Education - Singapore",
        "( Member since 1965 )\n Ministry of Education - Thailand",
        "( Member since 2006 )\n Government of the Democratic Republic of Timor-Leste",
        "( Member since 1992 )\n Ministry of Education and Training - Vietnam"
    ]
    
    
    
    @IBOutlet weak var dataCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
        let layout = UICollectionViewFlowLayout()

        let lebar = UIScreen.main.bounds.width
        let tinggi = UIScreen.main.bounds.height

//        layout.itemSize = CGSize(width: lebar/4, height: tinggi/5)
        layout.itemSize = CGSize(width: dataCollectionView.bounds.width / 2, height: dataCollectionView.bounds.height/3)
        
     
        
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        dataCollectionView.collectionViewLayout = layout
                
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return negara.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! CollectionViewCell
        
        cell.imageBendera.image = UIImage(named: bendera[indexPath.row])
        cell.lblBendera.text    = negara[indexPath.row]
        
        return cell
        
    }
    

}

