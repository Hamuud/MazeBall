import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: Text("Second View")){
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            }
                .navigationBarTitle("Level's", displayMode: .automatic)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
        
    }
}

