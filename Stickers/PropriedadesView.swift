//
//  PropriedadesView.swift
//  Stickers
//
//  Created by Rafael Franco on 11/10/24.
//

import SwiftUI

struct PropriedadesView: View {
    
    @State var isPresented: Bool = false
    
    var imagem = "lifepreserver"
    var nome = "Vidas"
    var valor = "2"
    var cor = Color.green
    
    var body: some View {
        Button {
            isPresented = true
        } label: {
            HStack {
                Image(systemName: imagem)
                    .foregroundColor(cor)
                    .frame(width: 30)
                    .font(.system(size: 30))
                
                Text(nome)
                                        
                Text(valor)
                    .padding(.trailing)
            }
        }
        .sheet(isPresented: $isPresented) {
            PropriedadeEditarView()
        }

    }
}

#Preview {
    PropriedadesView()
}
