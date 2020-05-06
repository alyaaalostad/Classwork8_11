//
//  ClassWork9List.swift
//  Classwork8_11
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//


/*         CLASSWORK 9       */

import SwiftUI

struct ClassWork9List: View {
    var body: some View {
          NavigationView {
              List(movies){ movie in
                  NavigationLink (destination: ClassWorknineDetail(movie: movie)){
                       MovieList(movie: movie)
                }
              }.navigationBarTitle("Movies")
          }.accentColor(.white)
    }
}

struct MovieList: View {
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

struct ClassWork9List_Previews: PreviewProvider {
    static var previews: some View {
        ClassWork9List()
    }
}
