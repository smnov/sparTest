//
//  RatingView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            Image("star")
                .resizable()
                .frame(width: 35, height: 35)
                .padding(.leading)
            Text("4.1")
                .bold()
            Text("| 19 отзывов")
                .foregroundStyle(Color.secondary)
            Spacer()
            Text("-5%")
                .foregroundStyle(.white)
                .frame(width:40, height: 24)
                .cornerRadius(6)
                .background(Color.red)
                .padding()
        }
    }
}

#Preview {
    RatingView()
}
