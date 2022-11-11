//
//  RestaurantDetail.swift
//  RestaurantList
//
//  Created by 윤소희 on 2022/11/05.
//

import SwiftUI
import MapKit

struct RestaurantDetail : View {
    
    let selectedRestaurant: Restaurant
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5526202, longitude: 126.922742), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        
        VStack {
            Map(coordinateRegion: $region, annotationItems:[AnnotatedItem(name:selectedRestaurant.name, coordinate: CLLocationCoordinate2D(latitude: selectedRestaurant.latitude, longitude: selectedRestaurant.longtitude))]) { item in
                MapMarker(coordinate: item.coordinate, tint: .purple)
            }
        }//VS
        .navigationTitle("\(selectedRestaurant.name)")
        .navigationBarItems(trailing: Button(action: {
            isShowingSheet.toggle()
        }, label: {
            Text("Web")
        }))
        .sheet(isPresented: $isShowingSheet, onDismiss: didDismiss) {
            SafariView(url: URL(string: selectedRestaurant.link)!)
        }
        .onAppear {
            region.center = .init(latitude: selectedRestaurant.latitude, longitude: selectedRestaurant.longtitude)
        }
        
    }//BD
    
    func didDismiss() {
        // Handle the dismissing action.
    }
    
}

struct RestaurantDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RestaurantDetail(selectedRestaurant: restaurantData[0])
        }
    }
}
