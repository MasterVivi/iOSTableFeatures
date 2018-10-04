//
//  CellContent.swift
//  TableFeatures
//
//  Created by John Paul Costello on 27/07/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation

class CellContent
{
    //MARK: Properties
    var headerTitle: String?
    var subHeaderTitle: String?
    var bodyContent: String?
    var footerTitle: String?
    
    //MARK: Initialisation
    init(HeaderTitle: String, SubHeaderTitle: String, BodyContent: String, FooterTitle: String)
    {
        headerTitle = HeaderTitle
        subHeaderTitle = SubHeaderTitle
        bodyContent = BodyContent
        footerTitle = FooterTitle
    }
}
