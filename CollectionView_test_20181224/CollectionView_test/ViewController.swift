//
//  ViewController.swift
//  CollectionView_test
//
//  Created by systena on 2018/12/22.
//  Copyright © 2018 systena. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {

    //UICollectionViewの紐付け
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //collectionViewに対してのセクション数の返却
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 49
    }
    
    //collectionView内のセル状態の返却
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //cellの定義、storyboardで"cell"と命名
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        //cellの背景色
        cell.backgroundColor = .white
        
        // cellの枠の太さ
        cell.layer.borderWidth = 1.0
        
        // cellの枠の色
        cell.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
    

    
    

}

