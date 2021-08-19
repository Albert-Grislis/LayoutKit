//
//  Operators.swift
//
//
//  Created by Albert Grislis on 20.08.2021.
//

import UIKit

public func +<Anchor: LayoutAnchor>(lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, rhs)
}

public func -<Anchor: LayoutAnchor>(lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, -rhs)
}

public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.equal(to: rhs)
}

public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.lessThanOrEqual(to: rhs)
}
