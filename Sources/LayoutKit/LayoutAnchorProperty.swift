//
//  LayoutAnchorProperty.swift
//
//
//  Created by Albert Grislis on 19.08.2021.
//

import UIKit

public struct LayoutAnchorProperty<Anchor: LayoutAnchor> {
    
    // MARK: Internal properties
    let anchor: Anchor
    
    // MARK: initializers & deinitializers
    public init(
        anchor: Anchor
    ) {
        self.anchor = anchor
    }
}

public extension LayoutAnchorProperty {
    
    // MARK: Public methods
    func getEqual(
        to otherAnchor: Anchor,
        offsetBy constant: CGFloat = 0.0
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            equalTo: otherAnchor,
            constant: constant
        )
    }
    
    func setEqual(
        to otherAnchor: Anchor,
        offsetBy constant: CGFloat = 0.0
    ) {
        self.anchor.constraint(
            equalTo: otherAnchor,
            constant: constant
        ).isActive = true
    }
    
    func getGreaterThanOrEqual(
        to otherAnchor: Anchor,
        offsetBy constant: CGFloat = 0.0
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            greaterThanOrEqualTo: otherAnchor,
            constant: constant
        )
    }
    
    func setGreaterThanOrEqual(
        to otherAnchor: Anchor,
        offsetBy constant: CGFloat = 0.0
    ) {
        self.anchor.constraint(
            greaterThanOrEqualTo: otherAnchor,
            constant: constant
        ).isActive = true
    }
    
    func getLessThanOrEqual(
        to otherAnchor: Anchor,
        offsetBy constant: CGFloat = 0.0
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            lessThanOrEqualTo: otherAnchor,
            constant: constant
        )
    }
    
    func setLessThanOrEqual(
        to otherAnchor: Anchor,
        offsetBy constant: CGFloat = 0.0
    ) {
        self.anchor.constraint(
            lessThanOrEqualTo: otherAnchor,
            constant: constant
        ).isActive = true
    }
}
