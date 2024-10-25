//
//  FigurasView.swift
//  Stickers
//
//  Created by Rafael Franco on 15/10/24.
//

import SwiftUI

struct FigurasView: View {
    
    var body: some View {
        
        NavigationView {
            
        List(figuras) { figura in
            NavigationLink(destination: FiguraDetalheView(figura: figura)) {
                FigurasLinhaView(figura: figura)
                }
            }
        }
        .navigationTitle("Figuras")
    }
}

#Preview {
    FigurasView()
}
