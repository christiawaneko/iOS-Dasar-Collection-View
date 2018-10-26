//
//  CollectionViewController.swift
//  CollectionView
//
//  Created by Christiawan Eko Saputro on 11/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // mengatur jumlah kolom
        let layout = UICollectionViewFlowLayout()
        
        let lebar = UIScreen.main.bounds.width
        let tinggi = UIScreen.main.bounds.height
        
        layout.itemSize = CGSize(width: lebar/3, height: tinggi/3)
        
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        collectionView.collectionViewLayout = layout
        
        
        
        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return negara.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
    
        // Configure the cell
        
        cell.imageBendera.image = UIImage(named: bendera[indexPath.row])
        cell.lblBendera.text    = negara[indexPath.row]
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(negara[indexPath.row])
    }
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
