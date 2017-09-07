//
//  SettingsViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/30/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController
{

    @IBOutlet weak var btnMenu: UIButton!
   
   
    @IBOutlet weak var btnLogOut: UIButton!
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let origImage = UIImage(named: "243724")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        btnLogOut.setImage(tintedImage, for: .normal)
        btnLogOut.tintColor = .darkGray
        
    }

    @IBAction func btnMenuAction(_ sender: Any)
    {
        let revealController  = self.revealViewController()
        revealController?.revealToggle(self)
    }
    @IBAction func btnLogoutAction(_ sender: Any) {
    }
   
    @IBOutlet weak var btntermServices: UIButton!
    override func didReceiveMemoryWarning()
    {
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
