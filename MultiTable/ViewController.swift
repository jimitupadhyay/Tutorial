//
//  ViewController.swift
//  MultiTable
//
//  Created by Jimit Upadhyay on 2017-04-09.
//  Copyright © 2017 Jimit Upadhyay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    var array1 = ["fruits 1","fruits 3","fruits 3"]
    var array2 = ["flowers 1","flowers 3","flowers 3"]
    
    
    
    @IBOutlet weak var firstTable: UITableView!
    @IBOutlet weak var secondTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        if(tableView == firstTable){
        
            return array1.count
        
        
        }
        else{
        return array2.count
        
        }
        
        
    }
    
  
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
    
        if(tableView == firstTable){
            
            var cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! TableViewCell1
            cell.refcell1.text = array1[indexPath.row]
            return cell
            
        }
        else{
            var cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! TableViewCell2
            cell.refcell2.text = array2[indexPath.row]
            return cell
            
        }
        
    }



}

