//
//  HideShowSectionController.swift
//  TableFeatures
//
//  Created by John Paul Costello on 04/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

class HideShowSectionController: UITableViewController, GestureRecognizedDelegate
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

// MARK: UITableViewDataSource

extension HideShowSectionController
{
    // MARK: Cells
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if (randomContentList[section].isExpanded == false) { return 0 }
        
        guard let count = randomContentList[section].rowArray?.count else { return 0 }
        return count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell : UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell")
        if (cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "DefaultCell")
        }
        cell.textLabel?.text = randomContentList[indexPath.section].rowArray?[indexPath.row]
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
        headerView.singleString = data.sectionTitle
        headerView.delegate = self
        headerView.tag = section
        headerView.contentView.backgroundColor = UIColor.gray
        return headerView
    }
}

// MARK: GestureRecognizedDelegate

extension HideShowSectionController
{
    func GestureRecognized(sender: Any)
    {
        let gesture = (sender as! UITapGestureRecognizer)
        let sectionHeader = (gesture.delegate as! ExpandHeaderView)
        randomContentList[(sectionHeader.tag)].isExpanded = !randomContentList[(sectionHeader.tag)].isExpanded
        
        var list = Array<IndexPath>()
        guard let count = randomContentList[(sectionHeader.tag)].rowArray?.count else { return }
        for i in 0..<count
        {
            list.append(IndexPath(row: i, section: sectionHeader.tag))
        }
        
        tableView.beginUpdates()
        
        if(randomContentList[(sectionHeader.tag)].isExpanded)
        {
            // Insert Rows
            tableView.insertRows(at: list, with: UITableViewRowAnimation.automatic)
        }
        else
        {
            // Delete Rows
            tableView.deleteRows(at: list, with: UITableViewRowAnimation.automatic)
        }
        
        tableView.endUpdates()
    }
}
