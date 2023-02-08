//
//  SimpleView.swift
//  LivePreviews-UIKit
//
//  Created by Alexandre Cardoso on 07/02/23.
//

import UIKit

final class SimpleView: UIView {
    
    private let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Simple Label"
        
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct SimpleView_Preview: PreviewProvider {
    static var previews: some View {
        View_Representable {
            let button = SimpleView()
            return button
        }.previewLayout(.sizeThatFits)
            .padding(10)
    }
}
#endif
