//
//  PriceView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct PriceView: View {
    
    enum ActiveButton {
           case piece, kg
       }
    
    @State private var activeButton: ActiveButton? = nil

       
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 0) {
                    Button(action: {
                        activeButton = .piece
                    }) {
                        Text("Шт")
                            .frame(width: 170, height: 35)
                            .foregroundColor(activeButton == .piece ? .gray : .black)
                            .background(activeButton == .piece ? Color.white : Color.gray)
                            .cornerRadius(8)
                            .shadow(radius:30)
                    }
                    
                    Button(action: {
                        activeButton = .kg
                    }) {
                        Text("Кг")
                            .frame(width: 170, height: 35)
                            .foregroundColor(activeButton == .kg ? .gray : .black)
                            .background(activeButton == .kg ? Color.white : Color.gray)
                            .cornerRadius(8)
                            .shadow(radius:30)
                    }
                }
            }
            .padding()
            HStack {
                Price()
                    .padding()
                Spacer()
                QuantityButton()
                    .padding()
            }
        }
    }
}

struct Price: View {
    var body: some View {
        VStack {
            HStack {
                Text("55.9")
                    .font(.title)
                    .bold()
                Text("₽")
                    .baselineOffset(2)
                +
                Text("/")
                +
                Text("кг")
                Spacer()
            }
            HStack {
                Text("199.0")
                    .strikethrough()
                    .foregroundStyle(.secondary)
                Spacer()
            }
        }
    }
}

#Preview {
    PriceView()
}
