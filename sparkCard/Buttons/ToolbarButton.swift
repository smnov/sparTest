//
//  ToolbarButton.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct ToolbarButton: View {
    var label: String
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: label)
        }
    }
}

#Preview {
    ToolbarButton(label: "heart")
}
