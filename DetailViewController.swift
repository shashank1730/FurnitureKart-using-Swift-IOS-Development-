//
//  DetailViewController.swift
//  Shashank
//
//  Created by nikhilesh yadav on 06/11/22.
//  Copyright © 2022 nikhilesh yadav. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var Fname: UITextField!
    @IBOutlet weak var Lname: UITextField!
    @IBOutlet weak var Mnum: UITextField!
    @IBOutlet weak var Add: UITextField!
    @IBOutlet weak var lblGen: UILabel!
    @IBOutlet weak var otp: UITextField!
    @IBOutlet weak var pay: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVc: BillViewController = segue.destination as! BillViewController
        let Finame = Fname.text!
        let Laname = Lname.text!
        let Monum = Mnum.text!
        let Adr = Add.text!
        let Mod = pay.text!
        
        newVc.fN = Finame
        newVc.lN = Laname
        newVc.mO = Monum
        newVc.aD = Adr
        newVc.pM = Mod
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func swt(_ sender: UISwitch) {
        if(sender.isOn==true){
            lblGen.text="Male"
        }
        else{
            lblGen.text="Female"
        }
    }
    
    
    @IBAction func ord(_ sender: Any) {
        
        if(otp.text!=="1234"){
        performSegue(withIdentifier: "O", sender: self)
            }
        else{
            let alert = UIAlertController(title: "Warning", message:"Invalid OTP",preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Resend", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "Try Again", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
            
        }
    }
    
    
    @IBAction func btnaction(_ sender: Any) {
        let cod  = {
            (action:UIAlertAction)->Void in
            self.pay.text="Cash On Delivery"
        }
        let cre  = {
            (action:UIAlertAction)->Void in
            self.pay.text="Credit Card"
        }
        let deb  = {
            (action:UIAlertAction)->Void in
            self.pay.text="Debit Card"
        }
        let alert = UIAlertController(title: "Mode of Payment", message: "Select Your Payment", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Cash On Delivery", style: .default, handler: cod))
        alert.addAction(UIAlertAction(title: "Credit Card", style: .default, handler: cre))
        alert.addAction(UIAlertAction(title: "Debit Card", style: .default, handler: deb))
            self.present(alert,animated: true,completion: nil)
        
    }
    
    
    
}

    
    
    
    



