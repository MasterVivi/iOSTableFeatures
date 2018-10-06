//
//  HomeViewController.swift
//  TableFeatures
//
//  Created by John Paul Costello on 26/07/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController : UITableViewController
{
    // MARK: Properties
    let testDataList = TestDataGenerator.GetTestList()
    let firstControllerIdentifier: String = "ExpandCollapseSectionDynamicViewController"
    let tableTestCellIdentifier: String = "TableTestCell"
}

// MARK: UITableViewDataSource
extension HomeViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return testDataList.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableTestCellIdentifier, for: indexPath)
        let cellData = testDataList[indexPath.row]
        cell.textLabel?.text = cellData.title
        cell.detailTextLabel?.text = cellData.subTitle
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        var strControllerIdentifier: String?
    
        switch indexPath.row {
        case 0:
            strControllerIdentifier = firstControllerIdentifier
        case 1:
            strControllerIdentifier = firstControllerIdentifier
        case 2:
            strControllerIdentifier = firstControllerIdentifier
        case 3:
            strControllerIdentifier = firstControllerIdentifier
        default:
            preconditionFailure("No identifier for view controller for row: \(indexPath.row)")
        }
        
        DispatchQueue.main.async
        {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let tableController = storyBoard.instantiateViewController(withIdentifier: strControllerIdentifier!)
            self.navigationController?.pushViewController(tableController, animated: true)
        }
    }
}
