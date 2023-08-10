//
//  Home.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            Text("Home")
                .foregroundColor(.red)
                .font(.system(size: 60))
                .bold()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
