//
//  DashBoardViewController.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/21/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource
{
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    @IBOutlet weak var cvTickets: UICollectionView!
    @IBOutlet weak var NavTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var tblRecentsOrders: UITableView!
    @IBOutlet weak var tblRecentTickets: UITableView!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var btnContinerView: UIView!
    @IBOutlet weak var viewTop: UIView!
    weak var searchViewController:SearchViewController!
    
    
    
    var picture:[UIImage] =
        [
        UIImage(named: "12")!,
        UIImage(named: "15")!,
        UIImage(named: "25")!,
        UIImage(named: "75")!,
        UIImage(named: "15")!,
        UIImage(named: "25")!
        ]
    
   var searchBar = UISearchBar()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 140, height: 100)
        self.cvTickets.collectionViewLayout = layout
        //searchBar.sizeToFit()
        //navigationItem.titleView = searchBar
        
        
        let notificationName = Notification.Name("hideSearchContainerView")
        NotificationCenter.default.addObserver(self, selector: #selector(DashBoardViewController.hideSearchContainerView), name: notificationName, object: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SearchViewController
        {
            self.searchViewController = vc
        }
    }
    
    func hideSearchContainerView() {
        UIView.animate(withDuration: 0.25, animations: {
            self.btnContinerView.alpha = 0
            self.viewTop.isHidden = false
            self.NavTopConstraint.constant = 0
            self.searchViewController.searchBar.resignFirstResponder()
            self.view.layoutIfNeeded()
        })
    }

    
    @IBAction func btnShowMenuClicked(_ sender: Any)
    {
        
        let revealController  = self.revealViewController()
        revealController?.revealToggle(self)
       
    }
    @IBAction func btnSearchAction(_ sender: Any)
    {
        UIView.animate(withDuration: 0.25, animations:
            {
            self.btnContinerView.alpha = 1
            self.NavTopConstraint.constant = -68
            self.viewTop.isHidden = true
            self.searchViewController.searchBar.becomeFirstResponder()
            self.searchViewController.searchBar.setShowsCancelButton(true, animated: true)
            self.view.layoutIfNeeded()
        })
    }
    //MARK: - Uitableview deleagate
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
        
    }
    
    // cell height
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        if(tableView == tblRecentTickets)
        {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticketscell", for: indexPath)
       // cell.lblItems.text = (arrMenuItems.object(at: indexPath.row) as! String)
       
        return cell
        }
        
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "orderCellIdentifire", for: indexPath)
            return cell
        
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
       
        if(tableView == tblRecentTickets)
        {
        let identifier = "TiketHeaderIdentifire"
        var cell: TicketTableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier) as? TicketTableViewCell
        
        if cell == nil
        {
            tableView.register(UINib(nibName: "TicketTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TicketTableViewCell
        }
        
        return cell
        }
        else
        {
            let identifier = "OrdersHeaderIdentifire"
            var cell: OrdersTableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier) as? OrdersTableViewCell
            
            if cell == nil
            {
                tableView.register(UINib(nibName: "OrdersTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
                cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? OrdersTableViewCell
            }
            
            return cell
        }
        
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return  44.0
        
    }

    
    //MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picture.count
    }
    
    
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath as IndexPath)as! DashBoardCollectionViewCell
        configureCell(cell: cell, forItemAtIndexPath: indexPath as NSIndexPath)
        cell.Imgcollectionview.image = self.picture[indexPath.row]
         //cell.imagev.image = self.picture[indexPath.row]
        //cell.layer.borderWidth=1.0;
        //cell.layer.borderColor=UIColor.blue.cgColor;
        
        return cell
    }
    
    func configureCell(cell: UICollectionViewCell, forItemAtIndexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.white
        
        
    }
    
    
    //MARK: UICollectionViewDelegate
    
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
     func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
    }
    //MARk: - Action
    
    @IBAction func btnLogoutAction(_ sender: Any)
    {
         
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
     let view =  collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "collectionCell", for: indexPath) as UICollectionReusableView
     return view
     }
    */

}
