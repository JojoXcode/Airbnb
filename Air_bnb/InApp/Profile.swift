//
//  Profile.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink {
                    Settings()
                } label: {
                    HStack{
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
                }
                
            }.navigationTitle("Profil")
        }
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
