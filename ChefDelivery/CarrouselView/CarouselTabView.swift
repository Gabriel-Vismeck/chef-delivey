import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex = 1
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner1", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner2", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex){
            ForEach(ordersMock){ mock in
                CarrouselItemView(order: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 160)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear(){
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeInOut(duration:1)){
                    if(currentIndex > ordersMock.count){
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
