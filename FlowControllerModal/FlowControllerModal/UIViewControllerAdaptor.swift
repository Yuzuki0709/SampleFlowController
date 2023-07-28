//
//  UIViewControllerAdaptor.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import SwiftUI
import UIKit

public struct UIViewControllerAdapor<UIViewControllerType: UIViewController>: UIViewControllerRepresentable {
    private let factory: () -> UIViewControllerType
    private let update: (UIViewControllerType) -> Void
    
    init(
        _ factory: @autoclosure @escaping () -> UIViewControllerType,
        update: @escaping (UIViewControllerType) -> Void = { _ in }
    ) {
        self.factory = factory
        self.update = update
    }
    
    public func makeUIViewController(context: Context) -> UIViewControllerType {
        factory()
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        update(uiViewController)
    }
}
