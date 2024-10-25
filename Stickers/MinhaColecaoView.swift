//
//  MinhaColecaoView.swift
//  Stickers
//
//  Created by Rafael Franco on 20/10/24.
//

import SwiftUI

struct MinhaColecaoView: View {
    
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        
        if minhaColecao.figuras.count == 0 {
            Text("Nenhuma figura adicionada")
        } else {
            List (minhaColecao.figuras) { figura in
                NavigationLink {
                    FiguraDetalheView(figura: figura)
                } label: {
                    FigurasLinhaView(figura: figura, cor: .green)
                }
            }
            .navigationTitle("Minha Coleção")
        }
    }
}

#Preview {
    MinhaColecaoView()
        .environmentObject(MinhaColecao())
}
