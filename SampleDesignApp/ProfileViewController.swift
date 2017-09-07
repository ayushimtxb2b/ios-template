//
//  ProfileViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/28/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var btnSave: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()

        btnSave.layer.cornerRadius = 25
        btnSave.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        btnSave.layer.borderWidth = 1.5
        btnSave.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
       @IBAction func btnMenuAction(_ sender: Any)
    {
        let revealController  = self.revealViewController()
        revealController?.revealToggle(self)
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
