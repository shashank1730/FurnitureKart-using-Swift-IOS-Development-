//
//  ViewController.swift
//  Shashank
//
//  Created by nikhilesh yadav on 04/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func log(_ sender: Any) {
        if(mail.text!=="shashank" && pass.text!=="11904465"){
            performSegue(withIdentifier: "one", sender: self)
        }
        else{
            let alert = UIAlertController(title: "Warning", message:"Wrong Password/Username",preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
        }
    }
    
}

