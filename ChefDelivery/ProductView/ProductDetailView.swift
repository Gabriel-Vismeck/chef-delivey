import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 1
    
    var body: some View {
        VStack{
            
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView(productQuantity: productQuantity)
            
            Spacer()
            
            ProductDetailButtonview()
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonview: View {
    var body: some View {
        Button{
            print("O botão foi pressionado")
        } label: {
            HStack{
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x:6, y:8)
        }
    }
}
