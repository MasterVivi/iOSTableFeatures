//
//  SectionObject.swift
//  TableFeatures
//
//  Created by John Paul Costello on 04/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation

class SectionObject : HideableObject
{
    //MARK: Properties
    var sectionTitle: String?
    var rowArray: Array<String>?
    
    //MARK: Initialisation
    init(SectionTitle: String, RowArray: Array<String>, SectionHidden: Bool)
    {
        super.init(IsExpanded: SectionHidden)
        
        sectionTitle = SectionTitle
        rowArray = RowArray
    }
}
