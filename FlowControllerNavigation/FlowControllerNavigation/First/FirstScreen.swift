//
//  FirstScreen.swift
//  FlowControllerModal
//
//  Created by 岩本竜斗 on 2023/07/28.
//

import SwiftUI

struct FirstScreen: View {
    @ObservedObject var viewModel: FirstViewModel
    
    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Button {
            viewModel.navigate(.second)
        } label: {
            Text("画面遷移")
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(viewModel: FirstViewModel())
    }
}
