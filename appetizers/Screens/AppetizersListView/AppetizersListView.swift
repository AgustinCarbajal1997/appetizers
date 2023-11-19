import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()

    
    var body: some View {
        ZStack{
            NavigationView {
                List(viewModel.appetizers, id: \.id) {
                    appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizar = appetizer
                            viewModel.isShowingDetail = true
                        }
                        .listRowSeparator(.hidden)
                }
                    .navigationTitle("🍿Appetizers")
                    .listStyle(.plain)
                    .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                //viewModel.getAppetizers() // vieja forma de hacerlo
            }
            .task {
                viewModel.getAppetizers() // vieja forma de hacerlo task es async ya y cancela la llamada si se desmonta la pantalla antes de completar
            }
            .blur(radius: viewModel.isShowingDetail ? 15 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizar!, isShowingDetail: $viewModel.isShowingDetail)
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
