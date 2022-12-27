//
//  PeopleView.swift
//  Recipe Saver
//
//  Created by Misan Etchie on 22/12/2022.
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        HStack  {
        ZStack (alignment: .leading) {
            Circle()
                .fill(.red)
                .frame(width: 25, height: 25).padding(.leading, 34)
            Circle()
                .fill(.green)
                .frame(width: 25, height: 25).padding(.leading, 17)
            Circle()
                .fill(.blue)
                .frame(width: 25, height: 25)

        }
            
            Text("misanetc, james, xavier + 3").font(.caption2).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading).lineLimit(2).multilineTextAlignment(.leading)
            
            Spacer()
            
    }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
