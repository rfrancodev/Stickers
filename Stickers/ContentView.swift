//
//  ContentView.swift
//  Stickers
//
//  Created by Rafael Franco on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        TabView {
            
            NavigationView{
                FigurasView()
                }
                    .tabItem {
                        Label("Figuras", systemImage: "face.smiling.fill")
                }
            NavigationView {
                MinhaColecaoView()
            }
                .tabItem {
                    Label("Minha coleção", systemImage: "face.dashed")
                }
            
        }
    }
        
}

#Preview {
    ContentView()
}
