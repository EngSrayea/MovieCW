//
//  ContentView.swift
//  MovieCW
//
//  Created by Eng. Norii on 5/5/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import SwiftUI

struct MoviesListView: View {
    var body: some View {
        NavigationView{
        List(movies){ movie in
            NavigationLink(destination: MoviesDetailsView(movie: movie)){
                MovieRow(movie: movie)
            }
        }.navigationBarTitle("Movies").padding(.trailing)
            
            }.accentColor(.white)
    }
}

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack{
            Image(movie.name)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(movie.name)
                .font(.title)
                .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        MoviesListView()
        MovieRow(movie: movies[0]).previewLayout(.sizeThatFits)
            
        }
        
    }
}
