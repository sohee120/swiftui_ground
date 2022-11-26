//
//  MapView.swift
//  Landmarks
//
//  Created by 윤소희 on 2022/11/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    // 지도에 대한 지역 정보를 보유하는 전용 상태 변수
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011, longitude: -116.166),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
        center: coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude:34.011_286, longitude:-116.166_868))
    }
}
