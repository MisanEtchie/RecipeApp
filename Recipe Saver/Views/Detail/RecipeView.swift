//
//  RecipeView.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 28/10/2022.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                    } placeholder: {
                        //image in image
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white.opacity(0.7))
                            //.frame(width: .infinity, height: .infinity)
                }
                }.frame(width: UIScreen.main.bounds.size.width, height: 350, alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous))
                
                
                Spacer()
                    //.padding()
            }
            .frame(maxWidth: UIScreen.main.bounds.size.width, maxHeight: 350, alignment: .top)
            
            VStack (spacing: 20) {
                HStack {
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                
                HStack {
                    VStack (alignment: .leading, spacing: 30) {
                        if !recipe.description .isEmpty { Text(recipe.description)
                        }
                        
                    }
                    Spacer()
                }
                
                HStack {
                    if !recipe.ingredients .isEmpty {
                        VStack (alignment: .leading, spacing: 20) {
                    Text ("Ingredients").font(.headline)
                    Text(recipe.ingredients)
                }
                        Spacer()
                    }
                    
                    
                }
                
                
                
                if !recipe.directions .isEmpty {VStack (alignment: .leading, spacing: 20) {
                    Text ("Directions").font(.headline)
                    Text(recipe.directions)
                }}
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
