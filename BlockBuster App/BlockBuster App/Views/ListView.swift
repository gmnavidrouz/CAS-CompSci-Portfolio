//
//  ListView.swift
//  BlockBuster App
//
//  Created by Navid Rouzroch on 1/31/23.
//

import SwiftUI

struct ListView: View {
    var searchTerm:String
    @State var movies: IMDBSearch?
    
    var body: some View {
        if let movies = movies{
            VStack{
                NavigationView {
                    List(movies.results, id: \.id){ movie in NavigationLink{
                        DetailView(movie: movie)
                    } label:{
                        Text(movie.title)
                    }
                    }.listStyle(.plain)
                }
            }
        } else {
            Text("Loading. . . ")
                .onAppear(){
                    loadData(searchTerm: searchTerm, completion: { movies in self.movies = movies
                    })
                }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(searchTerm: "Fringe")
    }
}
