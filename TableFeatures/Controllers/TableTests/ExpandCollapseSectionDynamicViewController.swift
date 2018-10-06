//
//  ExpandCollapseSectionDynamicViewController.swift
//  TableFeatures
//
//  Created by John Paul Costello on 26/07/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation
import UIKit

class ExpandCollapseSectionDynamicViewController : UITableViewController
{
    // MARK: Properties
    
    let randomContentList = TestDataGenerator.GetRandomDataList1()
    
    // MARK: View callbacks
    
    override func viewDidLoad()
    {
        tableView.register(ExpandHeaderView.self)
        tableView.register(ExpandFooterView.self)
        
        tableView.sectionHeaderHeight = UITableViewAutomaticDimension
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.sectionFooterHeight = UITableViewAutomaticDimension
        
        tableView.estimatedSectionHeaderHeight = 50
        tableView.estimatedRowHeight = 100
        tableView.estimatedSectionFooterHeight = 25
    }
}

// MARK: UITableViewDataSource

extension ExpandCollapseSectionDynamicViewController
{
    // MARK: Cells
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell : DynamicContentCell1 = tableView.dequeueReusableCell(indexPath: indexPath)
        let data = randomContentList[indexPath.section]
        cell.cellContent = data
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    // MARK: Headers
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return randomContentList.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let headerView : ExpandHeaderView = tableView.dequeueReusableHeaderFooterView()
        let data = randomContentList[section]
        headerView.cellContent = data
        headerView.contentView.backgroundColor = UIColor.gray
        return headerView
    }
    
    // MARK: Footers
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
    {
        let footerView : ExpandFooterView = tableView.dequeueReusableHeaderFooterView()
        let data = randomContentList[section]
        footerView.cellContent = data
        footerView.contentView.backgroundColor = UIColor.cyan
        return footerView
    }
}
