import SwiftUI

struct RectanglesView: View {
    let geometry: GeometryProxy
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        return VStack(spacing: 0) {
            Rectangle()
                .frame(width: screenWidth, height: screenHeight / 2 - screenWidth / 4.2)
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .stroke(Color.black, lineWidth: 4)
                .frame(width: screenWidth / 2, height: screenWidth / 2)
                .foregroundColor(.clear)
                .alignmentGuide(.top) { _ in
                    screenHeight / 2 - screenWidth / 4.2 // Выравниваем по верхнему краю первого прямоугольника
                }
            
            Rectangle()
                .frame(width: screenWidth, height: screenHeight / 3 + screenWidth / 2)
                .foregroundColor(.white)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
