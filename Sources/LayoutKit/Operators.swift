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
public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.setEqual(to: rhs)
}

@inlinable
public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.setEqual(to: rhs.0, offsetBy: rhs.1)
}

@inlinable
public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.setGreaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@inlinable
public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.setGreaterThanOrEqual(to: rhs)
}

@inlinable
public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.setLessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

@inlinable
public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.setLessThanOrEqual(to: rhs)
}
