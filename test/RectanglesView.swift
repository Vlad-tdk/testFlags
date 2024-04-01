//
//  RectanglesView.swift
//  test
//
//  Created by Vlad on 1.4.24..
//

import SwiftUI

struct RectanglesView: View {
    let geometry: GeometryProxy
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: geometry.size.width, height: geometry.size.width)
                .foregroundColor(.white)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 4 - geometry.size.width / 4)
            
            Rectangle()
                .stroke(Color.black, lineWidth: 4)
                .frame(width: geometry.size.width / 2, height: geometry.size.width / 2)
                .foregroundColor(.clear)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            
            Rectangle()
                .frame(width: geometry.size.width, height: geometry.size.width - 50)
                .foregroundColor(.white)
                .position(x: geometry.size.width / 2, y: geometry.size.height * 3 / 4 + geometry.size.width / 5)
        }
    }
}
