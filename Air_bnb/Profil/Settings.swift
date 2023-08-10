//
//  Settings.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationStack{
            List{
                HStack{
                    Text("Currency")
                    Spacer()
                    Text("EUR (€)")
                        .foregroundColor(.green)
                        .bold()}
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        Text("Translator")}
                HStack{
                    Link("Terms of Use", destination: URL(string: "https://www.airbnb.de/help/article/2908")!).foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "arrowshape.zigzag.right")
                        .foregroundColor(.blue)
                }
                HStack{
                    Link("Data protection", destination: URL(string: "https://www.airbnb.de/help/article/2855")!)
                        .foregroundColor(.blue)
               Spacer()
                    Image(systemName: "arrowshape.zigzag.right")
                        .foregroundColor(.blue)
                }
                Text("Version 23.31 (203481)")
            }.navigationTitle("Settings")
                .listStyle(.plain)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
