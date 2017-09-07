//
//  TeramServicesViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/31/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class TeramServicesViewController: UIViewController,UIWebViewDelegate
{
    @IBOutlet weak var webVwTerm: UIWebView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let url = NSURL (string: "https://www.google.co.in/?gfe_rd=cr&ei=CO6nWavxOIvy8Ae4lIFQ")
        let requestObj = URLRequest(url: url! as URL)
        webVwTerm.loadRequest(requestObj)
       
    }
    @IBAction func backAction(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
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
