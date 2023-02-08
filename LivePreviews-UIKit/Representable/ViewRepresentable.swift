//
//  ViewRepresentable.swift
//  LivePreviews-UIKit
//
//  Created by Alexandre Cardoso on 07/02/23.
//

#if canImport(SwiftUI) && DEBUG

import SwiftUI

struct View_Representable: UIViewRepresentable {

    private let viewBuilder: () -> UIView

    init(_ viewBuilder: @escaping () -> UIView) {
        self.viewBuilder = viewBuilder
    }
    
    // MARK: - UIViewRepresentable
    func makeUIView(context: Context) -> UIView {
        return viewBuilder()
    }
    
    func updateUIView(_ view: UIView, context: Context) {
        return
//        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
//        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
    
}

#endif
