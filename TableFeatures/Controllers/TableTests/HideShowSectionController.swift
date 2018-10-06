//
//  HideShowSectionController.swift
//  TableFeatures
//
//  Created by John Paul Costello on 04/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

class HideShowSectionController: UITableViewController
{
    // MARK: Properties
    
    let randomContentList = TestDataGenerator.GetRandomDataList2()
    
    // MARK: View callbacks
    
    override func viewDidLoad()
    {
        tableView.register(ExpandHeaderView.self)
        
        tableView.sectionHeaderHeight = UITableViewAutomaticDimension
        tableView.estimatedSectionHeaderHeight = 25
    }
}


