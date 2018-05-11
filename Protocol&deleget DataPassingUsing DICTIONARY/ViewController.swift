//
//  ViewController.swift
//  Protocol&deleget DataPassingUsing DICTIONARY
//
//  Created by nikhil boriwale on 5/11/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController,datapass{
    
    

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lbladdress: UILabel!
    @IBOutlet weak var lblcity: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }
    @IBAction func btnbacktoformaction(_ sender: Any) {
        let secvc :SecondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")as! SecondVC
        secvc.deleget = self
        self.navigationController?.pushViewController(secvc, animated: true)
        
        
    }
    func data(object: [String : String]) {
        lblname.text = object["name"]
        lbladdress.text = object["address"]
        lblcity.text = object["city"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

