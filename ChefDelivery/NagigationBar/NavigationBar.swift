
import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)

                        Spacer()
            Button(action:{}) {
                Image(systemName: "bell.badge")
                    .foregroundColor(.red)
                    .font(.title)
            }
        }
    }
}

#Preview {
    NavigationBar().previewLayout(.sizeThatFits).padding()
}
