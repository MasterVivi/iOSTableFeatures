//
//  ExpandFooterView.swift
//  TableFeatures
//
//  Created by John Paul Costello on 04/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

class ExpandFooterView: BaseTableHeaderFooterView
{
    // MARK: Outlets
    
    @IBOutlet weak var firstLabel: UILabel!
    
    // MARK: Properties
    
    var cellContent: CellContent?
    {
        didSet
        {
            guard let cellContent = cellContent else { return }
            
            firstLabel?.text = cellContent.footerTitle
            
            firstLabel?.isHidden = (cellContent.footerTitle?.count == 0)
        }
    }
}
