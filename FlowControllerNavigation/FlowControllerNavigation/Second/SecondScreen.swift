//
//  SecondScreen.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import SwiftUI

struct SecondScreen: View {
    @ObservedObject var viewModel: SecondViewModel
    
    init(viewModel: SecondViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Text("This is SecondView")
                .foregroundColor(.white)
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(viewModel: SecondViewModel())
    }
}
