import SwiftUI

struct CarrouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    CarrouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner")).previewLayout(.sizeThatFits)
        .padding()
}
