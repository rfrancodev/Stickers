//
//  ContentView.swift
//  Stickers
//
//  Created by Rafael Franco on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center) {
            
            Text("Mingle")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.gray)
                .bold()
                .textCase(.lowercase)
            
            HStack {
                Text("Frase: ")
                    .bold()
                
                Text("Problema em dobro")
                
            }
            Image("figura_01")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
