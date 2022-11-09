//
//  RecommdViewController.swift
//  Shashank
//
//  Created by nikhilesh yadav on 08/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class RecommdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        img.animationImages = imageStack
        img.animationDuration = 5
        img.startAnimating()
        
    }
    var imageStack: [UIImage] = [
    UIImage(named: "sale.png")!,
    UIImage(named: "new.png")!,
    UIImage(named: "del.png")!,
    UIImage(named: "qua.png")!
    ]
    @IBOutlet weak var img: UIImageView!
    

}
