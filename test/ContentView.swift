
//
//  Created by Vlad on 29.3.24..
//  ContentViewModel.swift
//  test
//
//  Created by Vlad on 1.4.24..
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    ImagesStackView(yOffset: $viewModel.yOffset, geometry: geometry)
                    RectanglesView(geometry: geometry)
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    viewModel.moveImages()
                }) {
                    Text("Сместить вверх")
                }
            }
        }
        .onAppear {
            viewModel.initializeOffset()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
