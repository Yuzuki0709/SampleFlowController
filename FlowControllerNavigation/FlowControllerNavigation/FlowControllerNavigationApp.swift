//
//  FlowControllerNavigationApp.swift
//  FlowControllerNavigation
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import SwiftUI

@main
struct FlowControllerNavigationApp: App {
    var body: some Scene {
        WindowGroup {
            UIViewControllerAdapor(rootContainerFlowController())
        }
    }
    
    private func rootContainerFlowController() -> UINavigationController {
        let root = RootContainerFlowController()
        root.start()
        return root
    }
}
