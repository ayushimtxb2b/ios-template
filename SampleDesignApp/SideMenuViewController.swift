//
//  SideMenuViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/22/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{

    @IBOutlet weak var tblSideMenu: UITableView!
    
    var arrMenuItems: NSArray!
    var picture:[UIImage] =
        [
            UIImage(named: "Home-Icon")!,
            UIImage(named: "message-icon1")!,
            UIImage(named: "client-icon")!,
            UIImage(named: "suppoartimage3")!,
            UIImage(named: "repoartIcon1")!,
            UIImage(named: "order-1")!,
            UIImage(named: "settings-icon")!,
            UIImage(named: "logout-icon1")!
    ]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        arrMenuItems = ["Dashboard","Messanger","Clients","Support","Report","Orders","Settings","Logout"]
        self.tblSideMenu.tableFooterView = UIView()

    }

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrMenuItems.count
        
    }
    
    // cell height
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! CustumSideMenuTableViewCell
        cell.lblItems.text = (arrMenuItems.object(at: indexPath.row) as! String)
        cell.ImgItems.image = self.picture[indexPath.row]//UIImage.init(named: "Logo 01")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
           // let currentCell = tableView.cellForRow(at: indexPath) as! CustumSideMenuTableViewCell
          //  currentCell.lblItems.textColor = UIColor.black
        
        if(indexPath.row == 0)
        {
             self.performSegue(withIdentifier: "dashBoardId", sender: self)
        }
            
        else if (indexPath.row == 2)
        {
           self.performSegue(withIdentifier: "ProfileID", sender: self)
            
        }
            
        else if (indexPath.row == 6)
        {
            self.performSegue(withIdentifier: "SettingId", sender: self)
            
            //appDelegate.resetAppToFirstController()
        }

            
        else if (indexPath.row == 7)
        {
           self.navigationController!.popToRootViewController(animated: true)
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
          
        }
        
        else
        {
            
            let revealController  = self.revealViewController()
            revealController?.revealToggle(self)
        }
            
       
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
    {
       // let currentCell = tableView.cellForRow(at: indexPath) as! CustumSideMenuTableViewCell
        //currentCell.lblItems.textColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
