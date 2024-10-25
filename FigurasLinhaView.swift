//
//  FigurasLinhaView.swift
//  Stickers
//
//  Created by Rafael Franco on 25/10/24.
//

import SwiftUI

struct FigurasLinhaView: View {
    var figura: Figura
    var cor: Color = .gray
    
    var body: some View {
        
        HStack {
            Image(figura.imagem+"_p")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .background(cor)
                .containerShape(Circle())
            Text(figura.nome)
        }
    }
}

#Preview {
    FigurasLinhaView(figura: figuras[0])
}
