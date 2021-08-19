//
//  LayoutProperty+Extensions.swift
//
//
//  Created by Albert Grislis on 20.08.2021.
//

import UIKit

public extension LayoutProperty {
    
    // MARK: Public methods
    func getEqual(to otherAnchor: Anchor,
                  offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        anchor.constraint(equalTo: otherAnchor,
                          constant: constant)
    }
    func setEqual(to otherAnchor: Anchor,
                  offsetBy constant: CGFloat = 0) {
        anchor.constraint(equalTo: otherAnchor,
                          constant: constant).isActive = true
    }
    
    func getGreaterThanOrEqual(to otherAnchor: Anchor,
                               offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        anchor.constraint(greaterThanOrEqualTo: otherAnchor,
                          constant: constant)
    }
    
    func setGreaterThanOrEqual(to otherAnchor: Anchor,
                               offsetBy constant: CGFloat = 0) {
        anchor.constraint(greaterThanOrEqualTo: otherAnchor,
                          constant: constant).isActive = true
    }
    
    func getLessThanOrEqual(to otherAnchor: Anchor,
                            offsetBy constant: CGFloat = 0) -> NSLayoutConstraint {
        anchor.constraint(lessThanOrEqualTo: otherAnchor,
                          constant: constant)
    }
    
    func setLessThanOrEqual(to otherAnchor: Anchor,
                            offsetBy constant: CGFloat = 0) {
        anchor.constraint(lessThanOrEqualTo: otherAnchor,
                          constant: constant).isActive = true
    }
}
