//
//  BaseCell.swift
//  TableFeatures
//
//  Created by John Paul Costello on 05/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

/*
 Protocols for defining default names in generic cell setup
 */

protocol NibLoadableView: class
{
    static var nibName: String { get }
}

protocol ReusableView: class
{
    static var defaultReuseIdentifier: String { get }
}

/*
 Default the strings to class names
 */

extension ReusableView where Self: UIView
{
    static var defaultReuseIdentifier: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension ReusableView where Self: UITableViewCell
{
    static var defaultReuseIdentifier: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension ReusableView where Self: UITableViewHeaderFooterView
{
    static var defaultReuseIdentifier: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension NibLoadableView where Self: UIView
{
    static var nibName: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension NibLoadableView where Self: UITableViewCell
{
    static var nibName: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension NibLoadableView where Self: UITableViewHeaderFooterView
{
    static var nibName: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
