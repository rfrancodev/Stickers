//
//  PropriedadeEditarView.swift
//  Stickers
//
//  Created by Rafael Franco on 15/10/24.
//

import SwiftUI


struct PropriedadeEditarView: View {
    
    @Binding var valor: String
    @Binding var valorInteiro: Int
    @Binding var valorDecimal: Double
    var tipo: tipoPropriedade = .numeroDecimal
    var body: some View {
        VStack {
            if tipo == .numeroInteiro{
                Stepper("Valor Atual \(valorInteiro)", value: $valorInteiro)
            }
            if tipo == .numeroDecimal{
                Text("Valor Atual: \(valorDecimal * 100, specifier: "%.0f")%")
                Slider(value: $valorDecimal)
            }
            if tipo == .texto{
                TextEditor(text: $valor)
            }
        }
    }
}

#Preview {
    PropriedadeEditarView(valor: .constant(""), valorInteiro: .constant(0), valorDecimal: .constant(1.0), tipo: .numeroDecimal)
}
