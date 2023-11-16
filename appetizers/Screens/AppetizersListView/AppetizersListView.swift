import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail: Bool = false
    
    var body: some View {
        ZStack{
            NavigationView {
                List(viewModel.appetizers, id: \.id) {
                    appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                        }
                }
                    .navigationTitle("🍿Appetizers")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
