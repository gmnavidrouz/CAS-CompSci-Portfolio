//
//  DetailView.swift
//  BlockBuster App
//
//  Created by Navid Rouzroch on 2/2/23.
//

import SwiftUI

struct DetailView: View {
    var movie:Movie
    var body: some View {
        VStack {
            AsyncImage(url: URL(string:movie.image)){ image in image.resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 400)
            Text(movie.title)
                .font(.title)
            Text(movie.description)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: Movie(id: "id", resultType: "result type", image: "imageurl", title: "My Movie Title", description: "Description"))
    }
}
