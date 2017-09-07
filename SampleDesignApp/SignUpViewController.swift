//
//  SignUpViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/21/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var signUp: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        signUp.layer.cornerRadius = 25
        signUp.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        signUp.layer.borderWidth = 1.5
        signUp.clipsToBounds = true
        
    }

    @IBAction func btnSignUp(_ sender: Any)
    {
       
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
