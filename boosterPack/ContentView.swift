//
//  ContentView.swift
//  boosterPack
//
//  Created by Eric Chandonnet on 2025-02-07.
//

import SwiftUI

struct ContentView: View {
    var cardSize = CardSizeManager()
    
    var body: some View {
        GeometryReader { geo in
            let cardSize = CardSizeManager(cardWidth: geo.size.width * 0.9)
            
            HStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .frame(width: cardSize.cardWidth, height: cardSize.cardHeight, alignment: .center)
                        .foregroundStyle(.yellow)
                        .cornerRadius(cardSize.cardCornerRadius)
                    Rectangle()
                        .frame(width: cardSize.safeWidth, height: cardSize.safeHeight, alignment: .center)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .blue],
                                startPoint: .topLeading,
                                endPoint: .trailing
                            ))
                        .cornerRadius(cardSize.safeCornerRadius)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
