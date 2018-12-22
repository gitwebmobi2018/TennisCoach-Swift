//
//  ReusableView.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

// If a UIView is a ReusableView, then have a reuseIdentifier
protocol ReusableView {}
extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// Add the property to them
extension UICollectionViewCell: ReusableView {}
extension UICollectionViewCell: NibLoadableView {}
extension UITableViewCell: ReusableView {}
extension UITableViewCell: NibLoadableView{}

// If a view loadable by Nib, then have a nibName
protocol NibLoadableView {}
extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
}

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
}
