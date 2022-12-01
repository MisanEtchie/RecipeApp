//
//  TabBar.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 27/10/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem{
                    Label("Category", systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
            FavoritesView()
                .tabItem{
                    Label("Favorite", systemImage: "heart")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .previewDevice("iPhone 13")
    }
}
