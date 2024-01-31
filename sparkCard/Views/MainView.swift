//
//  MainView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
                VStack {
                    ProductView()
                }
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        ToolbarButton(label: "arrow.left")
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack {
                            ToolbarButton(label: "list.clipboard")
                            ToolbarButton(label: "square.and.arrow.up")
                            ToolbarButton(label: "heart")
                        }
                    }
                }
                .padding()
        }
    }
}

#Preview {
    MainView()
}
