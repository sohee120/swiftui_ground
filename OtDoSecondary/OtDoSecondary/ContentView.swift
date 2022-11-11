//
//  ContentView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection: $selection ){
            WeatherView()
                .tabItem {
                    Image(systemName: "cloud.sun.fill")
                    Text("날씨")
                }.tag(1)
            DiaryView().tabItem {
                Image(systemName: "tshirt.fill")
                Text("옷장")
            }.tag(2)
            
            ComunityView().tabItem {
                Image(systemName: "person.3.fill")
                Text("커뮤니티")
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

