import SwiftUI

struct StoresContainersView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack{
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Filtrar"){
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self){ rating in
                        Button{
                            ratingFilter = rating
                        }label: {
                            if rating > 1{
                                Text("\(rating) estrelas ou mais")
                            }else{
                                Text("\(rating) estrela ou mais")
                            }
                            
                        }
                    }
                    
                }
                .foregroundColor(.black)
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty{
                    Text("Nenhum resultado encontrado!")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                    
                }else{
                    ForEach(filteredStores){ mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                    }
                }
                
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainersView()
        .previewLayout(.sizeThatFits)
}
