//
//  N_Bar.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct N_Bar: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")}
            Favourites()
                .tabItem {
                    Label("Favourites", systemImage: "heart")}
            Travel()
                .tabItem {
                    Label("Travel", systemImage: "suitcase")}
            Messages()
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
            Profile()
                .tabItem {
                    Label("Profil", systemImage: "person.crop.circle")}
                }
    }
}

struct N_Bar_Previews: PreviewProvider {
    static var previews: some View {
        N_Bar()
    }
}
