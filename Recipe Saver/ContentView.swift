//
//  ContentView.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 27/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
