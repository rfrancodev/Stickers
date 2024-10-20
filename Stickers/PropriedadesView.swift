//
//  PropriedadesView.swift
//  Stickers
//
//  Created by Rafael Franco on 11/10/24.
//

import SwiftUI

enum tipoPropriedade {
    case numeroInteiro
    case numeroDecimal
    case texto
}

struct PropriedadesView: View {
    
    @State var isPresented: Bool = false
    
    var imagem: String = "lifepreserver"
    var nome: String = "Vidas"
    var valor: String = "0.4"
    var valorInteiro: Int = 1
    var valorDecimal: Double = 1.0
    var cor: Color = .green
    var tipo: tipoPropriedade = .numeroDecimal
    
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
                
                if tipo == .texto {
                    Text(valor)
                        .padding(.trailing)
                }
                if tipo == .numeroInteiro {
                    Text("\(valorInteiro)")
                        .padding(.trailing)
                }
                if tipo == .numeroDecimal {
                    Text("\(valorDecimal * 100, specifier: "%.0f")%")
                        .padding(.trailing)
                }
                                        
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
