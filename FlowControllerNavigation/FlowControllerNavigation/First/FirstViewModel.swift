//
//  FirstViewModel.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import Foundation
import Combine

final class FirstViewModel: ObservableObject {
    private let _navigationSubject = PassthroughSubject<Navigation, Never>()
    var navigationSignal: AnyPublisher<Navigation, Never> {
        _navigationSubject.eraseToAnyPublisher()
    }
    
    func navigate(_ navigation: Navigation) {
        _navigationSubject.send(navigation)
    }
}

extension FirstViewModel {
    enum Navigation {
        case second
    }
}
