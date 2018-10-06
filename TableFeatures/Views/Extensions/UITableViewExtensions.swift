//
//  UITableViewExtensions.swift
//  TableFeatures
//
//  Created by John Paul Costello on 05/10/2018.
//  Copyright © 2018 John Paul Costello. All rights reserved.
//

import UIKit

// MARK: UITableViewCell

extension UITableView
{
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableView
    {
        register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
        
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView
    {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
        
    func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableView
    {
        guard let cell = dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T else
        {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}

// MARK: UITableViewHeaderFooterView

extension UITableView
{
    func register<T: UITableViewHeaderFooterView>(_: T.Type) where T: ReusableView
    {
        register(T.self, forHeaderFooterViewReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func register<T: UITableViewHeaderFooterView>(_: T.Type) where T: ReusableView, T: NibLoadableView
    {
        let bundle = Bundle(for: T.self)
        print("Name: \(T.nibName)")
        print("Bundle: \(bundle)")
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        print("Register: \(T.defaultReuseIdentifier)")
        register(nib, forHeaderFooterViewReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T where T: ReusableView
    {
        guard let cell = dequeueReusableHeaderFooterView(withIdentifier: T.defaultReuseIdentifier) as? T else
        {
            fatalError("Could not dequeue header/footer view with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}
