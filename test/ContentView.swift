import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                ZStack{
                    ImagesStackView(yOffset: $viewModel.yOffset, geometry: geometry)
                    RectanglesView(geometry: geometry)
                }
                VStack{
                    Button(action: {
                        viewModel.moveImages()
                    }) {
                        Text("Hit Me")
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                }
                .position(x: geometry.size.width / 2, y: geometry.size.height / 1.2)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
