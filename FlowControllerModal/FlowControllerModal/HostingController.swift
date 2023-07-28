//
//  HostingController.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import Foundation
import UIKit
import SwiftUI

open class HostingController<Content: View>: UIViewController {
    public var host: UIHostingController<Content>
    
    open override var navigationItem: UINavigationItem {
        host.navigationItem
    }
    
    public init(rootView: Content) {
        self.host = .init(rootView: rootView)
        super.init(nibName: nil, bundle: nil)
        addContent(host)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
