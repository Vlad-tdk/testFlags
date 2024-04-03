//
//  ImagesStackView.swift
//  test
//
//  Created by Vlad on 1.4.24..
//

import SwiftUI

struct ImagesStackView: View {
    @Binding var yOffset: CGFloat
    let geometry: GeometryProxy
    
    var body: some View {
        VStack(spacing: 75) {
            ForEach(1...4, id: \.self) { index in
                Image("\(index)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width / 5 * 2)
                    .offset(y: yOffset)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
        }
    }
}
