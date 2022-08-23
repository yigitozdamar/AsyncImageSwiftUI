//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Yigit Ozdamar on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Earth_poster_large.jpg/1600px-Earth_poster_large.jpg?20080517082911") ) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

                
                List(superHeroArray){
                    superhero in
                    Text(superhero.name).font(.title2)
                }.navigationTitle(Text("Superhero Book"))
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
