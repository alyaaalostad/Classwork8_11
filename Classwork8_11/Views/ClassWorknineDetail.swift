//
//  ClassWork9.swift
//  Classwork8_11
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct ClassWorknineDetail: View {
   var movie: Movie
       var body: some View {
           ZStack{
                Group{
                   Color.black.opacity(0.3)
                     .background(
                         Image(movie.title)
                               .resizable()
                               .scaledToFill()
                               .blur(radius: 40)
        
                          )
               }.edgesIgnoringSafeArea(.all)
     

            VStack(spacing: 40){
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
                ScrollView(.horizontal, showsIndicators: false) {
                         HStack{
                             ForEach(movie.characters, id: \.self){ (character:String) in
                                 Image(character).resizable().scaledToFit().frame(width: 200)
                             }
                         }
                     }
               }.foregroundColor(.white)
            
        }
       }
}

struct ClassWork9Detail_Previews: PreviewProvider {
    static var previews: some View {
        ClassWorknineDetail(movie: movies[0])
    }
}
