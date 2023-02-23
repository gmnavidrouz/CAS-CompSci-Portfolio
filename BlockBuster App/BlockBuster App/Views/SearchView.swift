//
//  SearchView.swift
//  BlockBuster App
//
//  Created by Navid Rouzroch on 2/2/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchTerm = "Enter Movie Title"
    var body: some View {
        NavigationView{
            VStack{
                TextField("Search Terms. . . ", text: $searchTerm)
                    .border(.gray)
                    .padding()
                    .multilineTextAlignment(.center)
                NavigationLink(destination: ListView(searchTerm: searchTerm), label: {
                Text("Search")
                })
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
