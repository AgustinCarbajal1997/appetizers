import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers, id: \.id) {
                appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
                .navigationTitle("🍿Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
        }
    }
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
