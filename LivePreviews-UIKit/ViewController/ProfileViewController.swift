//
//  ProfileViewController.swift
//  LivePreviews-UIKit
//
//  Created by Alexandre Cardoso on 07/02/23.
//

import UIKit
import SwiftUI

// MARK: - UIViewController

final class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let avatarView = UIView()
        avatarView.backgroundColor = .green
        view.addSubview(avatarView)

        avatarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            avatarView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            avatarView.widthAnchor.constraint(equalTo: view.widthAnchor),
            avatarView.heightAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
}

// MARK: - PreviewProvider
#if canImport(SwiftUI) && DEBUG
import SwiftUI

let deviceNames: [String] = [
    "iPhone SE",
    "iPhone 11 Pro Max",
    "iPhone 13 Pro"
]

struct ViewController_PreviewProvider: PreviewProvider {
  static var previews: some View {
    ForEach(deviceNames, id: \.self) { deviceName in
      ViewController_Representable {
          ProfileViewController()
      }.previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
#endif
