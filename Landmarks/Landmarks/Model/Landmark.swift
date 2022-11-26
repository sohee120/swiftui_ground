//
//  Landmark.swift
//  Landmarks
//
//  Created by 윤소희 on 2022/11/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    
    //데이터에서 이미지 이름을 읽는 imageName 프로퍼티와, 에셋에서 이미지를 로드하는 계산된 이미지 프로퍼티를 추가
    private var imageName: String
    var image: Image {
        get {
            return Image(imageName)
        }
    }
    
    
    
    //Mapkit 프레임워크와 상호 작용하는데 유용한 locationCoordinate 프로퍼티를 계산
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude
            )
        }
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
