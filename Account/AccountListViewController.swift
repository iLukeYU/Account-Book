//
//  AccountListViewController.swift
//  Account
//
//  Created by Luke YU on 15/11/1.
//  Copyright © 2015年 Zhang Chen. All rights reserved.
//

import UIKit

class AccountListViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var items: [String] = ["China", "USA", "Russia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cellNib: UINib = UINib(nibName: "AccountListTableViewCell", bundle: nil)
        self.tableView.registerNib(cellNib, forCellReuseIdentifier: "AccountListTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AccountListTableViewCell", forIndexPath: indexPath) as! AccountListTableViewCell
        cell.textString = items[indexPath.row]
        
        // cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90.0
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: TEXT_RETURN, style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.performSegueWithIdentifier("2AccountDetail", sender: self)
        
        self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
        // self.navigationController?.shyNavigationBar.enabled = false
    }
    
}
