import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presententionMode
    
    var body: some View {
        ScrollView (showsIndicators:false){
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView(store: store)
                
                StoreDetailProductsView(products: store.products)
                
            }
        }
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    presententionMode.wrappedValue.dismiss()
                } label: {
                    HStack(spacing:4){
                        Image(systemName: "cart")
                        
                        Text("Lojas")
                    }
                    .foregroundColor(.colorRed)
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
