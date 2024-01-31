//
//  ReviewsView.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import SwiftUI

struct ReviewsView: View {
    
    var body: some View {
        HStack {
            Text("Отзывы")
                .font(.title2)
                .bold()
                .padding()
            Spacer()
            Button {
                
            } label: {
                Text("Все 152")
                    .padding()
                    .bold()
                    .foregroundColor(.green)
            }
        }
        ScrollView(.horizontal) {
            HStack {
                ReviewCell()
                ReviewCell()
            }
        }
        Button {
            
        } label: {
            Text("Оставить отзыв")
                .frame(width: 300, height: 15)
                .bold()
                .padding()
                .foregroundColor(Color.green)
                .background(Color.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: 35)
                        .stroke(Color.green, lineWidth: 3)
                )
        }
    }
}

#Preview {
    ReviewsView()
}

struct ReviewCell: View {
    
    @StateObject var viewmodel = ProductViewModel()
    
    var body: some View {
        VStack {
            Text("Александр В.")
                .bold()
            Text("7 мая 2021")
                .foregroundStyle(.secondary)
            StarRating(rating: 4)
            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .frame(width: 300, height: 280)
    }
}

struct StarRating: View {
    var rating: Int
    var body: some View {
        HStack {
            ForEach(0..<5, id:\.self) { star in
                Image(star < rating ? "star" : "gray_star")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .onAppear {
            
        }
    }
}
