//
//  ExpandHeaderView.swift
//  TableFeatures
//
//  Created by John Paul Costello on 03/08/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation
import UIKit

class ExpandHeaderView : UITableViewHeaderFooterView
{
    // MARK: Outlets
    
    // MARK: Properties
    var cellContent: CellContent?
    {
        didSet
        {
            guard let cellContent = cellContent else { return }
            
//            firstLabel?.text = cellContent.headerTitle
//            SecondLabel?.text = cellContent.subHeaderTitle
//            ThirdLabel?.text = cellContent.footerTitle
        }
    }
    
    // MARK: Instantiation
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
