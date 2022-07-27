//
//  LayoutDimensionProperty.swift
//
//
//  Created by Albert Grislis on 12.09.2021.
//

import UIKit

public struct LayoutDimensionProperty<Dimension: LayoutDimension> {
    
    // MARK: Internal properties
    let anchor: Dimension
}

public extension LayoutDimensionProperty {
    
    // MARK: Public methods
    func getEqual(
        to otherAnchor: Dimension,
        offsetBy constant: CGFloat = 0.0
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            equalTo: otherAnchor,
            constant: constant
        )
    }
    
    func setEqual(
        to otherAnchor: Dimension,
        offsetBy constant: CGFloat = 0.0
    ) {
        self.anchor.constraint(
            equalTo: otherAnchor,
            constant: constant
        ).isActive = true
    }
    
    func getGreaterThanOrEqual(
        to otherAnchor: Dimension,
        offsetBy constant: CGFloat = 0.0
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            greaterThanOrEqualTo: otherAnchor,
            constant: constant
        )
    }
    
    func setGreaterThanOrEqual(
        to otherAnchor: Dimension,
        offsetBy constant: CGFloat = 0.0
    ) {
        self.anchor.constraint(
            greaterThanOrEqualTo: otherAnchor,
            constant: constant
        ).isActive = true
    }
    
    func getLessThanOrEqual(
        to otherAnchor: Dimension,
        offsetBy constant: CGFloat = 0.0
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            lessThanOrEqualTo: otherAnchor,
            constant: constant
        )
    }
    
    func setLessThanOrEqual(
        to otherAnchor: Dimension,
        offsetBy constant: CGFloat = 0.0
    ) {
        self.anchor.constraint(
            lessThanOrEqualTo: otherAnchor,
            constant: constant
        ).isActive = true
    }
    
    func getEqual(
        to constant: CGFloat
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            equalToConstant: constant
        )
    }
    
    func setEqual(
        to constant: CGFloat
    ) {
        self.anchor.constraint(
            equalToConstant: constant
        ).isActive = true
    }
    
    func getGreaterThanOrEqual(
        to constant: CGFloat
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            greaterThanOrEqualToConstant: constant
        )
    }
    
    func setGreaterThanOrEqual(
        to constant: CGFloat
    ) {
        self.anchor.constraint(
            greaterThanOrEqualToConstant: constant
        ).isActive = true
    }
    
    func getLessThanOrEqual(
        to constant: CGFloat
    ) -> NSLayoutConstraint {
        return self.anchor.constraint(
            lessThanOrEqualToConstant: constant
        )
    }
    
    func setLessThanOrEqual(
        to constant: CGFloat
    ) {
        self.anchor.constraint(
            lessThanOrEqualToConstant: constant
        ).isActive = true
    }
}
