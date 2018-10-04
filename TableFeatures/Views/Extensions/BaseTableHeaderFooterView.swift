//
//  BaseTableHeaderFooterView.swift
//  TableFeatures
//
//  Created by John Paul Costello on 04/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

class BaseTableHeaderFooterView: UITableViewHeaderFooterView
{
    var view: UIView!
    
    override init(reuseIdentifier: String?)
    {
        super.init(reuseIdentifier: reuseIdentifier)
        
        // Attach related xib
        attachXib()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        // Attach related xib
        attachXib()
    }
    
    private func attachXib()
    {
        backgroundColor = UIColor.clear
        
        view = loadNib()
        view.frame = bounds
        addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": view]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|",
                                                      options: [],
                                                      metrics: nil,
                                                      views: ["childView": view]))
    }
}
