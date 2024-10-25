//
//  StickersApp.swift
//  Stickers
//
//  Created by Rafael Franco on 08/10/24.
//

import SwiftUI

@main

struct Stickers: App {
    var body: some Scene {
        let minhaColecao = MinhaColecao()
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}
