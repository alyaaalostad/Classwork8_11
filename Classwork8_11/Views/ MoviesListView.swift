//
//  ContentView.swift
//  Classwork8_11
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

/*         CLASSWORK 8        */

import SwiftUI

struct MoviesListView: View {
    var body: some View {
        NavigationView {
        List{
            NavigationLink (destination: MoviesDetailView(movie: movies[0])){
                 MovieRow(movie: movies[0])
            }
            NavigationLink (destination: MoviesDetailView(movie: movies[1])){
            MovieRow(movie: movies[1])
            }
            NavigationLink (destination: MoviesDetailView(movie: movies[2])){
            MovieRow(movie: movies[2])

            }
            }.navigationBarTitle("Movies")
        }
    }
}


struct MovieRow: View {
    var movie: Movie
    var body: some View {
        
        HStack{
            Image(movie.title)
                         .resizable()
                         .scaledToFit()
                         .frame(height: 100)
                         .clipShape(Circle())
            Text(movie.title)
                .font(.title)
            .bold()
        }.padding(.horizontal)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}

