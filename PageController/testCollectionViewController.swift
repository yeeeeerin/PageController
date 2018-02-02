//
//  testCollectionViewController.swift
//  PageViewControllerDemo
//
//  Created by 이예린 on 2018. 2. 2..
//  Copyright © 2018년 Kevin L. Owens. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class testCollectionViewController: UICollectionViewController {
    
    let testArr:[Int] = [6,66,9,20,28]
    
    var section: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }


    //샐의 개수는 페이지의 num에 따라서 다르게 한다.
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return testArr[self.section!]
    }

    //각각의 셀
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)

        
        cell.backgroundColor = UIColor.cyan
    
        return cell
    }
    
    //헤더뷰 처리
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader {
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderView", for: indexPath)
            
            return view
        }
        fatalError("Unexpected kind")
        
    }
    
    
    //헤더뷰 사이즈
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width, height: 100)
    }

}
