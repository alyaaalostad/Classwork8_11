//
//  Movie.swift
//  Classwork8_11
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import Foundation


struct Movie : Hashable, Identifiable {
    
    var title : String
    var characters : [String]
    var id = UUID()
    
}

var harrypotter = Movie(title: "harry potter", characters: ["Harry", "Hermione"])
var matrix = Movie(title: "Matrix", characters: ["Neo", "Trinity"])
var backtothefuture = Movie(title: "back to the future", characters: ["Doc", "Marty"])


var movies = [harrypotter, matrix, backtothefuture]

//var movies : [Movie] = [
//
//Movie(title: "harry potter", characters: ["harry", "hermione"]),
//Movie(title: "Matrix", characters: ["Neo", "Trinity"]),
//Movie(title: "back to the future", characters: ["Doc", "Marty"])
//
//]
