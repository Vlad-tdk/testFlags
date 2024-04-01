//
//  ContentViewModel.swift
//  test
//
//  Created by Vlad on 1.4.24..
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var yOffset: CGFloat = 0.0
    private var originalOffset: CGFloat = 0.0
    
    func initializeOffset() {
        originalOffset = yOffset
    }
    
    func moveImages() {
        withAnimation(.easeOut(duration: 1)) {
            yOffset -= UIScreen.main.bounds.height - 350
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) { [self] in
            yOffset = originalOffset
        }
    }
}
