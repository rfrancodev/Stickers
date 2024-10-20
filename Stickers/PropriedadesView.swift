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
    @Binding var valor: String
    @Binding var valorInteiro: Int
    @Binding var valorDecimal: Double
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
            PropriedadeEditarView(valor: $valor, valorInteiro: $valorInteiro, valorDecimal: $valorDecimal, tipo: tipo)
        }

    }
}

#Preview {
    PropriedadesView(valor: .constant(""), valorInteiro: .constant(0), valorDecimal: .constant(0))
}
