//
//  CountryCell.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct CountryCell: View {
    var body: some View {
        HStack {
            Image("flag")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.leading)
            Text("Испания, Риоха")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    CountryCell()
}
