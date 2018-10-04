//
//  ExpandHeaderView.swift
//  TableFeatures
//
//  Created by John Paul Costello on 17/08/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

class ExpandHeaderView : BaseTableHeaderFooterView
{
    // MARK: Outlets
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    // MARK: Properties
    
    var cellContent: CellContent?
    {
        didSet
        {
            guard let cellContent = cellContent else { return }
            
            firstLabel?.text = cellContent.headerTitle
            secondLabel?.text = cellContent.subHeaderTitle
            
            firstLabel?.isHidden = (cellContent.headerTitle?.count == 0)
            secondLabel?.isHidden = (cellContent.subHeaderTitle?.count == 0)
        }
    }
}
