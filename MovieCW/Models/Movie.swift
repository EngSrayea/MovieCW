//
//  Movie.swift
//  MovieCW
//
//  Created by Eng. Norii on 5/6/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import Foundation

struct Movie: Hashable, Identifiable {
    
    var name: String
    var characters: [String]
    var id = UUID()
    
}

var movies: [Movie] = [
    Movie(name: "A Beautiful Mind", characters: [ "Russell Crowe", "Ed Harris", "Jennifer Connelly"]),
    Movie(name: "Interstaller", characters: [ "Matthew McConaughey", "Anne Hathaway", "Jessica Chastain"]),
    Movie(name: "The King's Speech", characters: [ "Colin Firth", "Geoffrey Rush", "Helena Bonham Carter"]),
    Movie(name: "Waco", characters: [ "Michael Shannon, Taylor Kitsch, Andrea Riseborough"]),
    Movie(name: "Mindhunter", characters: [ "Jonathan Groff, Holt McCallany, Anna Torv"]),
    Movie(name: "11.22.63", characters: [ "James Franco, Sarah Gadon, George MacKay"]),
    Movie(name: "The Night Of", characters: [ "Riz Ahmed, John Turturro, Bill Camp"]),
    
    
]

