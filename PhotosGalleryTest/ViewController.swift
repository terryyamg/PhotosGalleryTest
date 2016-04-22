//
//  ViewController.swift
//  PhotosGalleryTest
//
//  Created by USER on 2016/4/22.
//  Copyright © 2016年 terryyamg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    let photoCount = 2 //照片張數
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoCount
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

        //取得cell
        let cell: Cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! Cell
        print("indexPath:\(indexPath.row)")
        if indexPath.row == 0{
            cell.imgView.image = UIImage(named: "p1.jpg") // 放入第一張
        }else{
            cell.imgView.image = UIImage(named: "p2.jpg") // 放入第二張
        }
        
        return cell
    }

}

