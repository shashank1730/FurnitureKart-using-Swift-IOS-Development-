//
//  EntryViewController.swift
//  Shashank
//
//  Created by nikhilesh yadav on 08/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    var imageStack: [UIImage] = [
    UIImage(named: "logo.png")!,
    UIImage(named: "del.png")!,
    UIImage(named: "qua.png")!
    ]

    @IBOutlet weak var imageSet: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
