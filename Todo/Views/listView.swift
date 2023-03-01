import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listviewmodel: ListViewModel
    
    var body: some View {
        ZStack{
            if listviewmodel.items.isEmpty {
                NoListView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else{
                List{
                    ForEach(listviewmodel.items) { item in
                        listRowView(item: item)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 1.1)){
                                    listviewmodel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewmodel.deleteItem)
                    .onMove(perform: listviewmodel.moveItem)
                }
            }
        }
        .navigationTitle("Todo List 🖌")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }.environmentObject(ListViewModel())
    }
}
