//
//  ViewController.swift
//  Card Layout
//
//  Created by apple on 25/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
    @IBOutlet weak var collection: UICollectionView!
    

    let imgTitle : [String] = ["Wallpaper number 1","Wallpaper number 2","Wallpaper number 3","Wallpaper number 4","Wallpaper number 5","Wallpaper number 6","Wallpaper number 7","Wallpaper number 8","Wallpaper number 9","Wallpaper number 10","Wallpaper number 11"]
    
    let imgSubTitle : [String] = ["Wallpaper number 1 Wallpaper number 1 Wallpaper number 1 Wallpaper number 1 Wallpaper number 1","Wallpaper number 2 Wallpaper number 2 Wallpaper number 2 Wallpaper number 2 Wallpaper number 2 Wallpaper number 2","Wallpaper number 3 Wallpaper number 3Wallpaper number 3 Wallpaper number 3 Wallpaper number 3 Wallpaper number 3","Wallpaper number 4 Wallpaper number 4 Wallpaper number 4 Wallpaper number 4 Wallpaper number 4 Wallpaper number 4","Wallpaper number 5 Wallpaper number 5 Wallpaper number 5 Wallpaper number 5 Wallpaper number 5 Wallpaper number 5","Wallpaper number 6 Wallpaper number 6 Wallpaper number 6 Wallpaper number 6 Wallpaper number 6 Wallpaper number 6","Wallpaper number 7 Wallpaper number 7 Wallpaper number 7 Wallpaper number 7 Wallpaper number 7 Wallpaper number 7","Wallpaper number 8 Wallpaper number 8 Wallpaper number 8 Wallpaper number 8 Wallpaper number 8 Wallpaper number 8","Wallpaper number 9 Wallpaper number 9 Wallpaper number 9 Wallpaper number 9 Wallpaper number 9 Wallpaper number 9","Wallpaper number 10 Wallpaper number 10 Wallpaper number 10 Wallpaper number 10 Wallpaper number 10 Wallpaper number 10","Wallpaper number 11 Wallpaper number 11 Wallpaper number 11 Wallpaper number 11 Wallpaper number 11 Wallpaper number 11"]
    
    let images : [UIImage] = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "11")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCollectionViewCell
        
        cell.imageView.image = images[indexPath.row]
        cell.name.text = imgTitle[indexPath.row]
        cell.subtitle.text = imgSubTitle[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Full") as! FullScreenImage
        
        vc.img = images[indexPath.row]
        vc.imgTitle = self.imgTitle[indexPath.row]
        vc.imgSubTitle = self.imgSubTitle[indexPath.row]
        self.present(vc, animated: true, completion: nil)
        
    }


}

