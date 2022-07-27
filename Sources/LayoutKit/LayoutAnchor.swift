//
//  LayoutAnchor.swift
//
//
//  Created by Albert Grislis on 19.08.2021.
//

import UIKit

public protocol LayoutAnchor {
    
    // MARK: Public methods
    func constraint(
        equalTo anchor: Self,
        constant: CGFloat
    ) -> NSLayoutConstraint
    func constraint(
        greaterThanOrEqualTo anchor: Self,
        constant: CGFloat
    ) -> NSLayoutConstraint
    func constraint(
        lessThanOrEqualTo anchor: Self,
        constant: CGFloat
    ) -> NSLayoutConstraint
}
