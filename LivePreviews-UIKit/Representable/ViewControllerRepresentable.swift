//
//  ViewControllerRepresentable.swift
//  LivePreviews-UIKit
//
//  Created by Alexandre Cardoso on 07/02/23.
//

// MARK: - UIViewControllerRepresentable
#if canImport(SwiftUI) && DEBUG

import SwiftUI

struct ViewController_Representable: UIViewControllerRepresentable {

    private let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        return
    }
    
}

#endif
