//
//  RecipeCard.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 28/10/2022.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
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
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        //.frame(width: .infinity, height: .infinity)
            }
            }.frame(width: 160, height: 270, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            HStack {
                Text(recipe.name)
                    //.font(.subheadline)
                    //.foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                .frame(maxWidth: 136)
                
                Spacer()
            }
            
            Spacer()
                //.padding()
        }
        .frame(width: 160, height: 330, alignment: .top)
            //.shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[4])
    }
}
