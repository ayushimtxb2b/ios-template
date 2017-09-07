//
//  ViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/18/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate
{

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnTiwtter: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        btnSignIn.layer.cornerRadius = 25
        btnSignIn.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        btnSignIn.layer.borderWidth = 1.5
        btnSignIn.clipsToBounds = true
       
        btnSignUp.layer.cornerRadius = 25
        btnSignUp.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        btnSignUp.layer.borderWidth = 1.5
        btnSignUp.clipsToBounds = true

    }


    @IBAction func btnFaceBookAction(_ sender: Any)
    {
    }
   
    @IBAction func btnTiwtter(_ sender: Any)
    {
    }
    @IBAction func btnGoogleAction(_ sender: Any)
    {
    }

    @IBAction func btnSignUpAction(_ sender: Any)
    {
       
    }
    @IBAction func btnSignAction(_ sender: Any) {
        self.performSegue(withIdentifier: "dashBoardId", sender: self)
    }
}

