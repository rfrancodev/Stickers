//
//  FigurasView.swift
//  Stickers
//
//  Created by Rafael Franco on 15/10/24.
//

import SwiftUI

struct FigurasView: View {
    
    
    
    var body: some View {
        
        List(figuras) { figura in
            NavigationLink(destination: FiguraDetalheView(figura: figura)) {
                HStack {
                    Image(figura.imagem+"_p")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(.gray)
                        .containerShape(Circle())
                    Text(figura.nome)
                }
            }
        }
        .navigationTitle("Figuras")
    }
}

#Preview {
    FigurasView()
}
