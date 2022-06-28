//
//  FontExtension.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/18.
//

import Foundation
import SwiftUI

extension Font {
    static func futuraMedium(size: CGFloat) -> Font {
        return Font.custom("Futura-Medium", size: size)
    }
}

struct NavigationBarBuilder: UIViewControllerRepresentable {

    var build: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationBarBuilder>) -> UIViewController {

        UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationBarBuilder>) {

        if let navigationController = uiViewController.navigationController{
            self.build(navigationController)
        }
    }
}
