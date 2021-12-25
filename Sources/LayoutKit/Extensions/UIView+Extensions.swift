//
//  UIView+Extensions.swift
//
//
//  Created by Albert Grislis on 20.08.2021.
//

import UIKit

public extension UIView {
    
    // MARK: Public properties
    var layoutProxy: LayoutProxy {
        LayoutProxy(view: self)
    }
    
    // MARK: Public methods
    func makeLayout(
        using closure: (LayoutProxy) -> [NSLayoutConstraint]
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(closure(self.layoutProxy))
    }
    
    func addSubview(
        _ subview: UIView,
        layoutClosure: (LayoutProxy) -> [NSLayoutConstraint]
    ) {
        self.addSubview(subview)
        subview.makeLayout(using: layoutClosure)
    }
}
