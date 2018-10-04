//
//  DynamicContentCell1.swift
//  TableFeatures
//
//  Created by John Paul Costello on 27/07/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation
import UIKit

class DynamicContentCell1 : UITableViewCell
{
    // MARK: IBOutlets
    @IBOutlet weak var contentLabel: UILabel!
    
    // MARK: Properties
    var cellContent: CellContent?
    {
        didSet
        {
            guard let cellContent = cellContent else { return }
            
            contentLabel?.text = cellContent.bodyContent
        }
    }
}
