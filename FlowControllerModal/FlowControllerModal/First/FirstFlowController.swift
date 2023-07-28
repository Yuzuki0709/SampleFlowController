//
//  FirstFlowController.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import Foundation
import Combine
import UIKit

final class FirstFlowController: HostingController<FirstScreen>, FlowController {
    private var cancellable = Set<AnyCancellable>()
    private var current: UIViewController?
    
    private var viewModel: FirstViewModel {
        host.rootView.viewModel
    }
    
    func start() {
         cancellable = Set()
        
        viewModel.navigationSignal
            .sink(receiveValue: { [weak self] navigation in
                guard let self else { return }
                switch navigation {
                case .second:
                    self.startSecond()
                }
            })
            .store(in: &cancellable)
        
    }
    
    private func startSecond() {
        let second = SecondFlowController(rootView: SecondScreen(viewModel: SecondViewModel()))
        self.present(second, animated: true)
        second.start()
    }
}
