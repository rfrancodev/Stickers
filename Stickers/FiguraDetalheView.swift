//
//  FiguraDetalheView.swift
//  Stickers
//
//  Created by Rafael Franco on 15/10/24.
//

import SwiftUI

struct FiguraDetalheView: View {
    
    @State var itensNaColecao: Int = 0
    
    var figura: Figura
    
    var body: some View {
        VStack (alignment: .leading) {
            
            HStack {
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                
                Text("\"\(figura.frase)\"")
                
            }
            
            HStack {
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                VStack (alignment: .leading){
                    PropriedadesView(valorInteiro: figura.vidas, tipo: .numeroInteiro)
                    PropriedadesView(imagem: "bolt", nome: "Potência", valorDecimal: figura.potencia, cor: .yellow, tipo: .numeroDecimal)
//                    PropriedadesView(imagem: "circle", nome: "Teste", valor: "isso é um teste", cor: .purple, tipo: .texto)
                   
                }
                
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text(figura.descricao)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
            
                Spacer()
                
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    itensNaColecao += 1
                } label: {
                    if itensNaColecao == 0 {
                        
                    Text("Adicionar a sua coleção")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        
                    } else {
                        
                    Text("Na sua coleção: \(itensNaColecao)")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                    }
                }
                .cornerRadius(30)
                Spacer()
            }
            .padding()
            

        }
        .navigationTitle(figura.nome)
    }
}

#Preview {
    FiguraDetalheView(figura: figuras[0])
}

