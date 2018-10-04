//
//  TestDataProcessor.swift
//  TableFeatures
//
//  Created by John Paul Costello on 26/07/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import Foundation

final class TestDataProcessor
{
    static func GetTestList() -> Array<TableTest>
    {
        return [
            TableTest(Title: "Expand/Collapse", SubTitle: "Dynamic content in header/body/footer"),
            TableTest(Title: "Expand/Collapse", SubTitle: "Tap sections to expand/collapse"),
            TableTest(Title: "Expand/Collapse", SubTitle: "Cells with expandable body constant"),
            TableTest(Title: "Expand/Collapse", SubTitle: "Cells with expendable body dynamic")
        ]
    }
    
    static func GetRandomDataList1() -> Array<CellContent>
    {
        return [
            CellContent(HeaderTitle: "Header Title", SubHeaderTitle: "This is a subheader title", BodyContent:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", FooterTitle: "This is a footer title"),
            CellContent(HeaderTitle: "Header Title", SubHeaderTitle: "", BodyContent:"It is a long established fact", FooterTitle: "This is a footer title"),
            CellContent(HeaderTitle: "Header Title", SubHeaderTitle: "This is a subheader title", BodyContent:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", FooterTitle: "This is a footer title"),
            CellContent(HeaderTitle: "", SubHeaderTitle: "This is a subheader title", BodyContent:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", FooterTitle: ""),
            CellContent(HeaderTitle: "Header Title", SubHeaderTitle: "This is a subheader title that is longer to show the dynamic height of the stack", BodyContent:"It is a long established fact that a reader will be distracted by the readable content of a page when looking.", FooterTitle: "This is a footer title that is a longer to show the dynamic height on the stack"),
            CellContent(HeaderTitle: "", SubHeaderTitle: "This is a subheader title", BodyContent:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", FooterTitle: ""),
            CellContent(HeaderTitle: "Header Title", SubHeaderTitle: "This is a subheader title", BodyContent:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less", FooterTitle: "This is a footer title"),
            CellContent(HeaderTitle: "Header Title", SubHeaderTitle: "This is a subheader title", BodyContent:"making it look like readable English.", FooterTitle: "This is a footer title"),
        ]
    }
}
