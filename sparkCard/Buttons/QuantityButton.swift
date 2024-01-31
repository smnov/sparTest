//
//  QuantityButton.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct QuantityButton: View {
    @State var quantity = 1
    @State var sum = 120
    var body: some View {
        HStack {
                  Button(action: {
                      if quantity > 1 {
                          quantity -= 1
                      }
                  }) {
                      Image(systemName: "minus")
                          .foregroundStyle(.white)
                  }
            VStack {
                Text("\(quantity) шт.")
                    .foregroundStyle(.white)
                    .bold()
                Text("\(sum)")
                    .foregroundStyle(.white)
                
            }
            Button(action: {
                quantity += 1
            }) {
                Image(systemName: "plus")
                    .foregroundStyle(.white)
            }
        }
        .padding()
        .frame(width: 160, height: 50)
        .background(Color.green)
        .cornerRadius(30)
    }
}

#Preview {
    QuantityButton()
}
