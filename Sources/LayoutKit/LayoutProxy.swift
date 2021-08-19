//
//  LayoutProxy.swift
//
//
//  Created by Albert Grislis on 19.08.2021.
//

import UIKit

public final class LayoutProxy {
    
    // MARK: Public properties
    public lazy var top = property(with: view.topAnchor)
    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var width = property(with: view.widthAnchor)
    public lazy var height = property(with: view.heightAnchor)
    
    // MARK: Private properties
    private let view: UIView
    
    // MARK: Initializers & Deinitializers
    public init(view: UIView) {
        self.view = view
    }
    
    // MARK: Private methods
    private func property<Anchor: LayoutAnchor>(with anchor: Anchor) -> LayoutProperty<Anchor> {
        return LayoutProperty(anchor: anchor)
    }
}
