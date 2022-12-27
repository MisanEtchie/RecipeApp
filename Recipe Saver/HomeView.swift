//
//  HomeView.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 27/10/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                RecipeList(recipes: Recipe.all)
            }.navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
