//
//  Home.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

// Definiere eine Struktur für die Auflistung eines Angebots
struct Listing {
    let images: [String]
    let location: String
    let pricePerNight: String  // Der Preis pro Nacht
    let rating: Float  // Die Bewertung des Angebots
    var isLiked: Bool  // Gibt an, ob das Angebot als "Gefällt mir" markiert ist
}

// Eine Ansicht zum Anzeigen eines Bildergalerie-Sliders
struct ImageGallery: View {
    let images: [String]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())  // Stil für die TabView
        .cornerRadius(20)  // Abrundung der Ecken
    }
}

// Eine wiederverwendbare Ansicht für die Anzeige eines "Gefällt mir"-Symbols über einer anderen Ansicht
struct LikeableView<Content: View>: View {
    let content: Content  // Inhalt, über dem das "Gefällt mir"-Symbol angezeigt wird
    @Binding var isLiked: Bool  // Bindable State, um zu verfolgen, ob das Angebot gemocht wird
    
    var body: some View {
        ZStack {
            content
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        isLiked.toggle()  // Bei Klick auf das Symbol wird der Zustand umgeschaltet
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")  // Angepasstes Symbol
                            .foregroundColor(isLiked ? .gray : .white)  // Symbolfarbe ändert sich je nach Zustand
                            .padding(15)
                            .cornerRadius(10)
                    }
                }
                Spacer()
            }
        }
    }
}

// Eine Vorschauansicht für die Anzeige eines Angebots
struct ListingPreview: View {
    @Binding var listing: Listing  // Bindable State für das Angebot
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            LikeableView(content: ImageGallery(images: listing.images), isLiked: $listing.isLiked)  // Anpassbare Ansicht mit "Gefällt mir"-Symbol
                .aspectRatio(1, contentMode: .fit)
            
            HStack {
                Text(listing.location)
                    .font(.headline)  // Schriftgröße für den Ort
                Spacer()
                HStack {
                    Image(systemName: "star.fill")  // Gefüllter Stern-Symbol
                    Text(String(format: "%.2f", listing.rating))  // Formatierung der Bewertung
                }
            }
            
            HStack {
                Text(listing.pricePerNight)
                    .font(.headline)  // Schriftgröße für den Preis
                Text("night")
                    .foregroundColor(.gray)  // Graue Farbe für "night" Text
            }
        }
        .padding()
        .background(Color.white)  // Hintergrundfarbe
        .cornerRadius(15)  // Abrundung der Ecken
        
    }
}

struct Home: View {
    @State private var listing = Listing(
        images: ["8f90e1f9-2c54-441b-97ea-123d703bb19a", "698845e1-3a37-4830-bf9d-1536f0efcf35"],
        location: "Wiesbaden",
        pricePerNight: "300 €",
        rating: 4.5,
        isLiked: false
    )  // Zustand für die angezeigten Angebote
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ListingPreview(listing: $listing)  // Vorschau für das Angebot
                ListingPreview(listing: $listing)
                ListingPreview(listing: $listing)
            }
            .padding()  // Innenabstand für die Ansicht
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
