//
//  LayoutProxy.swift
//
//
//  Created by Albert Grislis on 19.08.2021.
//

import UIKit

public final class LayoutProxy {
    
    // MARK: Public properties
    public lazy var top: LayoutAnchorProperty<NSLayoutYAxisAnchor> = layoutAnchorProperty(with: self.view.topAnchor)
    public lazy var leading: LayoutAnchorProperty<NSLayoutXAxisAnchor> = layoutAnchorProperty(with: self.view.leadingAnchor)
    public lazy var trailing: LayoutAnchorProperty<NSLayoutXAxisAnchor> = layoutAnchorProperty(with: self.view.trailingAnchor)
    public lazy var bottom: LayoutAnchorProperty<NSLayoutYAxisAnchor> = layoutAnchorProperty(with: self.view.bottomAnchor)
    public lazy var centerX: LayoutAnchorProperty<NSLayoutXAxisAnchor> = layoutAnchorProperty(with: self.view.centerXAnchor)
    public lazy var centerY: LayoutAnchorProperty<NSLayoutYAxisAnchor> = layoutAnchorProperty(with: self.view.centerYAnchor)
    public lazy var width: LayoutDimensionProperty<NSLayoutDimension> = layoutDimensionProperty(with: self.view.widthAnchor)
    public lazy var height: LayoutDimensionProperty<NSLayoutDimension> = layoutDimensionProperty(with: self.view.heightAnchor)
    
    // MARK: Private properties
    private let view: UIView
    
    // MARK: Initializers & Deinitializers
    public init(view: UIView) {
        self.view = view
    }
    
    // MARK: Private methods
    private func layoutAnchorProperty<Anchor: LayoutAnchor>(with anchor: Anchor) -> LayoutAnchorProperty<Anchor> {
        return LayoutAnchorProperty(anchor: anchor)
    }
    
    private func layoutDimensionProperty<Dimension: LayoutDimension>(with anchor: Dimension) -> LayoutDimensionProperty<Dimension> {
        return LayoutDimensionProperty(anchor: anchor)
    }
}
