//
//  FiguraDetalheView.swift
//  Stickers
//
//  Created by Rafael Franco on 15/10/24.
//

import SwiftUI

struct FiguraDetalheView: View {
    

    @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao
    
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
                    PropriedadesView(
                        valor: .constant(""),
                        valorInteiro: $figura.vidas,
                        valorDecimal: .constant(0),
                                        tipo: .numeroInteiro)
                    
                    PropriedadesView(
                        imagem: "bolt",
                        nome: "Potência",
                        valor: .constant(""),
                        valorInteiro: .constant(0),
                        valorDecimal: $figura.potencia,
                                        cor: .yellow,
                                        tipo: .numeroDecimal)
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
                
                    minhaColecao.figuras.append(figura)
                } label: {
                    if minhaColecao.figuras.count == 0 {
                    Text("Adicionar a sua coleção")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        
                    } else {
                        Text("Na sua coleção: \(minhaColecao.figuras.count)")
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
        .environmentObject(MinhaColecao())
}
