//
//  LayoutDimension.swift
//
//
//  Created by Albert Grislis on 12.09.2021.
//

import UIKit

public protocol LayoutDimension: LayoutAnchor {
    
    // MARK: Public methods
    func constraint(
        equalToConstant constant: CGFloat
    ) -> NSLayoutConstraint
    func constraint(
        greaterThanOrEqualToConstant constant: CGFloat
    ) -> NSLayoutConstraint
    func constraint(
        lessThanOrEqualToConstant constant: CGFloat
    ) -> NSLayoutConstraint
}
