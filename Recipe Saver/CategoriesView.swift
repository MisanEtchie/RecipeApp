//
//  CategoriesView.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 27/10/2022.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) {
                    category in
                    NavigationLink {
                        CategoryView (category: category)
                    }  label: {
                        Text(category.rawValue + "s")}
                    }
            }.navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
