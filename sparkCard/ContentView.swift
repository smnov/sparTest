//
//  ContentView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        
        TabView {
            MainView()
                .tabItem {
                    Label("Главная", systemImage: "tree.fill")
                }
            CatalogeView()
                .tabItem {
                    Label("Каталог", systemImage: "menucard")
                }
            CartView()
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
        .accentColor(.green)
    }
}

#Preview {
    ContentView()
}
