//
//  Travel.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct Travel: View {
    var body: some View {
        VStack{
            Text("Travel")
                .foregroundColor(.red)
                .font(.system(size: 60))
                .bold()
        }
    }
}

struct Travel_Previews: PreviewProvider {
    static var previews: some View {
        Travel()
    }
}
