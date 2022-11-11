//
//  Restaurant.swift
//  RestaurantList
//
//  Created by 윤소희 on 2022/11/02.
//

import SwiftUI

struct Restaurant: Codable, Identifiable {
    
    var id: String
    var name: String
    var latitude: Double // 위도
    var longtitude: Double // 경도
    var link: String
    
}
