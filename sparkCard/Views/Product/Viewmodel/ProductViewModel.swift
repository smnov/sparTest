//
//  ProductViewModel.swift
//  sparkCard
//
//  Created by Александр Семенов on 31.01.2024.
//

import Foundation

struct Char: Hashable {
    var name: String
    var value: String
}

struct Review: Hashable {
    var name: String
    var rating: Int
    var date: Date
    var text: String
}

final class ProductViewModel: ObservableObject {
    var chars: [Char] = [
        Char(name: "Производство", value: "Россия, Краснодарский край"),
        Char(name: "Энергетическая ценность, ккал/100г", value: "25 ккал, 105 кДж"),
        Char(name: "Жиры/100 г", value: "0,1 г"),
        Char(name: "Белки/100 г", value: "1,3 г"),
        Char(name: "Углеводы/100 г", value: "3,3г"),
    ]
}
