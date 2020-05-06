//
//  MoviesDetailsView.swift
//  MovieCW
//
//  Created by Eng. Norii on 5/5/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import SwiftUI

struct MoviesDetailsView: View {
    var movie: Movie
    
    var body: some View {
        
        ZStack{
            Image(movie.name)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .blur(radius: 40)
            
            Color.black.edgesIgnoringSafeArea(.all)
                .opacity(0.4)
            
            VStack {
                Image(movie.name).resizable()
                .scaledToFill()
                    .frame(width:200,height: 200)
                    .clipShape(Circle()).overlay(Circle().stroke(Color.black,lineWidth: 3))
                Text(movie.name)
                .font(.largeTitle)
                    .bold()
                
                Text(movie.characters.joined(separator:" , "))
                
            }.foregroundColor(.white)
        }
        
    }
}

struct MoviesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailsView(movie: movies[0])
        
    }
}
