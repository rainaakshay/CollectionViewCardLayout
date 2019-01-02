//
//  FullScreenImage.swift
//  Card Layout
//
//  Created by apple on 25/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class FullScreenImage: UIViewController {
    @IBOutlet weak var fullImage: UIImageView!
    
    @IBOutlet weak var imageTitle: UILabel!
    
    @IBOutlet weak var imageSubTitle: UILabel!
    
    var imgTitle : String? = nil
    var imgSubTitle : String? = nil
    
    @IBAction func returntoGallery()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    var img = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        fullImage.image = img
        imageTitle.text = imgTitle
        imageSubTitle.text = imgSubTitle
        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
