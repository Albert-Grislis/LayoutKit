//
//  Operators.swift
//
//
//  Created by Albert Grislis on 20.08.2021.
//

import UIKit

@inlinable
public func +<Anchor: LayoutAnchor>(lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, rhs)
}

@inlinable
public func -<Anchor: LayoutAnchor>(lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, -rhs)
}

@inlinable
public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) -> NSLayoutConstraint {
    return lhs.getEqual(to: rhs)
}

@inlinable
public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
    return lhs.getEqual(to: rhs.0, offsetBy: rhs.1)
}

@inlinable
public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
    return lhs.getGreaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@inlinable
public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) -> NSLayoutConstraint {
    return lhs.getGreaterThanOrEqual(to: rhs)
}

@inlinable
public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) -> NSLayoutConstraint {
    return lhs.getLessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@inlinable
public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) -> NSLayoutConstraint {
    return lhs.getLessThanOrEqual(to: rhs)
}
