//
//  ContentView.swift
//  RestaurantList
//
//  Created by 윤소희 on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var restaurantStore: RestaurantStore = RestaurantStore(restaurants: restaurantData)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restaurantStore.restaurants) {restaurant in
                    ListCell(restaurant: restaurant)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("맛집"))
            .navigationBarItems(trailing: EditButton())
        }
    }//BD
    
    func deleteItems(at offsets: IndexSet) {
        restaurantStore.restaurants.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        restaurantStore.restaurants.move(fromOffsets: source, toOffset: destination)
    }
    
    
    
    
    struct ListCell: View {
        
        var restaurant: Restaurant
        
        var body: some View {
            NavigationLink(destination: RestaurantDetail(selectedRestaurant: restaurant)) {
                Text(restaurant.name)
            }//NV
        }//BD
    }//LS
}//ST

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
