//
//  FlowControllerModalApp.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import SwiftUI

@main
struct FlowControllerModalApp: App {
    var body: some Scene {
        WindowGroup {
            UIViewControllerAdapor(firstFlowController())
                .ignoresSafeArea()
        }
    }
    
    private func firstFlowController() -> UIViewController {
        let first = FirstFlowController(rootView: FirstScreen(viewModel: FirstViewModel()))
        first.start()
        return first
    }
}
