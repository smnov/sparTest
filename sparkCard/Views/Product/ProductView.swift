//
//  ProductView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI



struct ProductView: View {
    var body: some View {
        VStack {
            ScrollView {
                Image("product")
                    .resizable()
                    .frame(width: 400, height: 400)
                    .overlay(priceOverlay, alignment: .topLeading)
                RatingView()
                Text("Добавка \"Липа\" к чаю 200 г")
                    .font(.title)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                CountryCell()
                Text("Описание")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .bold()
                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.bottom)
                CharsView()
                ReviewsView()
                PriceView()
            }
        }
    }
    
    private var priceOverlay: some View {
            Text("Цена по карте")
            .frame(width: 130, height: 30)
            .foregroundStyle(.white)
            .background(Color.green)
            .cornerRadius(7)
            .padding()
    }
}

#Preview {
    ProductView()
}
