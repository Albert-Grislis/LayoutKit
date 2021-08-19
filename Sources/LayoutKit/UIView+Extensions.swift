//
//  UIView+Extensions.swift
//
//
//  Created by Albert Grislis on 20.08.2021.
//

import UIKit

public extension UIView {
    
    func layout(using closure: (LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: self))
    }
}
