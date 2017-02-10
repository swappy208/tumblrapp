//
//  PhotoDetailsViewController.swift
//  tumblrfeed
//
//  Created by Swapnil Tamrakar on 2/10/17.
//  Copyright © 2017 Swapnil Tamrakar. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!

    var photo: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = photo["photos"] as? [NSDictionary]{
            
            let imageURLString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageUrl = NSURL(string: imageURLString!) {
                photoImageView.setImageWith(imageUrl as URL)
            } else {
            }
        } else {
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
