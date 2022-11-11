//
//  RestaurantStore.swift
//  RestaurantList
//
//  Created by 윤소희 on 2022/11/04.
//

import SwiftUI
import Combine

class RestaurantStore: ObservableObject {
    
    @Published var restaurants: [Restaurant]
    
    init(restaurants: [Restaurant] = []) {
        self.restaurants = restaurants
    }
    
}
