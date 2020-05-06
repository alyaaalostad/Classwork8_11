//
//  MoviesDetailView.swift
//  Classwork8_11
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct MoviesDetailView: View {
    var movie: Movie
    var body: some View {
        ZStack{
            Image(movie.title)
                .resizable()
                .scaledToFill()
                .blur(radius: 25)
                .edgesIgnoringSafeArea(.all)
            
            Color.black.edgesIgnoringSafeArea(.all).opacity(0.4)
            
            VStack{
                Image(movie.title)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Text(movie.title)
                    .font(.title)
                    .bold()
                
                Text(movie.characters.joined(separator: ", "))
            }.foregroundColor(.white)
        }
    }
}

struct MoviesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        MoviesDetailView(movie: movies[0])
    }
}
