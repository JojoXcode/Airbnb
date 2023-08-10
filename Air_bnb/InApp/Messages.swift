//
//  Messages.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        VStack{
            Text("Messages")
                .foregroundColor(.red)
                .font(.system(size: 60))
                .bold()
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
