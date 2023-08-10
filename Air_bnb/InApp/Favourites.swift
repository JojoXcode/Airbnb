//
//  Favourites.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct Favourites: View {
    var body: some View {
        VStack{
            Text("Favourites")
                .foregroundColor(.red)
                .font(.system(size: 60))
                .bold()
        }
    }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites()
    }
}
