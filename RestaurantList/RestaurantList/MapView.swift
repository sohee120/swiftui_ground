//
//  MapView.swift
//  RestaurantList
//
//  Created by 윤소희 on 2022/11/05.
//

import SwiftUI
import CoreLocation


struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

//var pointsOfInterest = [
//    AnnotatedItem(name: "Times Square", coordinate: .init(latitude:40.75773, longitude:-73.985708)),
//    AnnotatedItem(name: "Flatiron Building", coordinate: .init(latitude:40.75773, longitude:-73.985708)),
//    AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude:40.75773, longitude:-73.985708))
//]
//
//struct MapView: View {
//
//    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 37.498044, longitude: 127.028705),
//        span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
//
//    var body: View {
//        NavigationStack {
//            VStack{
//                Map(coordinateRegion:$region, ann)
//            }//VS
//        }//NV
//    }//BD
//}
