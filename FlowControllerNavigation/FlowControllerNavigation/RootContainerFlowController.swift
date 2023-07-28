//
//  RootContainerFlowController.swift
//  FlowControllerNavigation
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import UIKit

final class RootContainerFlowController: UINavigationController, FlowController {
    func start() {
        let first = FirstFlowController(rootView: FirstScreen(viewModel: FirstViewModel()))
        
        setViewControllers([first], animated: true)
        first.start()
    }
}
