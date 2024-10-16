//
//  FigurasView.swift
//  Stickers
//
//  Created by Rafael Franco on 15/10/24.
//

import SwiftUI

struct FigurasView: View {
    
    var figuras = ["Migles", "Yodel"]
    
    var body: some View {
        
        List(figuras , id: \.self) { figura in
            NavigationLink(destination: FiguraDetalheView()) {
                Text(figura)
            }
        }
    }
}

#Preview {
    FigurasView()
}
