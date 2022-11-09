//
//  BillViewController.swift
//  Shashank
//
//  Created by nikhilesh yadav on 06/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {

    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var num: UILabel!
    
    @IBOutlet weak var add: UILabel!
    
    @IBOutlet weak var lblrate: UILabel!
    
    @IBOutlet weak var lblRN: UILabel!
    
    @IBOutlet weak var payM: UILabel!
    
    var fN = String()
    var lN = String()
    var mO = String()
    var aD = String()
    var pM = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Name:- \(fN) \(lN)"
        num.text =  "Mobile No.:- \(mO)"
        add.text =  "Delivery Address :- \(aD)"
        payM.text = "Mode of Payment :- \(pM)"
        
    }
    

    @IBAction func sld(_ sender: UISlider) {
        lblRN.text = String(Int(sender.value))
        
        if(sender.value==0){
            lblrate.text = "Very Bad"
        }
        else if(sender.value==1){
            lblrate.text = "Bad Experience"
        }
        else if(sender.value==2){
            lblrate.text = "Average Experience"
        }
        else if(sender.value==3){
            lblrate.text = "Above Average Experience"
        }
        else if(sender.value==4){
            lblrate.text = "Good Experience"
        }
        else{
            lblrate.text = "Very Good"
        }
    }
    

}
