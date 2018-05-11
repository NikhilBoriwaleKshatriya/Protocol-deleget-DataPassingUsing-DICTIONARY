//
//  SecondVC.swift
//  Protocol&deleget DataPassingUsing DICTIONARY
//
//  Created by nikhil boriwale on 5/11/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit
protocol  datapass {
    func data(object:[String:String])
    
   
}
class SecondVC: UIViewController {

    @IBOutlet weak var txtcity: UITextField!
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtaddress: UITextField!
    var deleget : datapass!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func btnsaveaction(_ sender: Any) {
        if txtname.text == ""{
            showMessage(title: "enter name", message: "enter name", VC: self)
        }else if txtaddress.text == ""{
            showMessage(title: "Enter address", message: "Enter address", VC: self)
        }else if txtcity.text == ""{
            showMessage(title: "enter city", message: "enter city", VC: self )
        }else{
            // Dictonary pass krne key liye aisa krna pdta hey pass line  no 35
            let dict:[String:String] = ["name":txtname.text!,"address":txtaddress.text!,"city":txtcity.text!]
            //pass ur total dict to data line 37
            deleget.data(object: dict)
            
            
        }
        
    }
        func showMessage(title: String, message: String!, VC: UIViewController) {
            
            let alert : UIAlertController = UIAlertController(title: "", message: message, preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                UIAlertAction in
            }
            alert.addAction(okAction)
            VC.present(alert, animated: true, completion: nil)
            
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
