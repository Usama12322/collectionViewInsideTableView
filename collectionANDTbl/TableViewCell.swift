//
//  TableViewCell.swift
//  collectionANDTbl
//
//  Created by macbook on 22/03/2021.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    var imageArray = [String] ()
    override func awakeFromNib() {
    super.awakeFromNib()
    self.collectionView.delegate = self
    self.collectionView.dataSource = self
        imageArray=["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg"]
    // Initialization code
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? CollectionViewCell
    {
    let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count)))
    cell.imageView.image = UIImage(named: imageArray[randomNumber])
    return cell
    }
    return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
       {
          return CGSize(width: 200.0, height: 250.0)
       }
    }
