//
//  CharsView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI


struct CharsView: View {
    
    @StateObject var viewmodel = ProductViewModel()
    
    var body: some View {
        Text("Основные характеристики")
            .bold()
            .padding(.bottom)
        ForEach(viewmodel.chars, id: \.self) { char in
            HStack {
                Text(char.name)
                    .padding(.leading)
                Spacer()
                Text(char.value)
                    .font(.subheadline)
                    .padding(.trailing)
            }
            Divider()
        }
        Button {
            
        } label: {
            Text("Все характеристики")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.green)
                .bold()
                .padding()
        }
    }
}

#Preview {
    CharsView()
}
