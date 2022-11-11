//
//  WeatherView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI

struct WeatherView: View {
    @State private var locationShow: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TabView{
                    MainWeatherThemeView(locationShow: $locationShow)
                    WeatherThemeView(locationShow: $locationShow)
                }
                .frame(height: 770)
                .tabViewStyle(PageTabViewStyle())
               
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                .padding(.bottom)
                
                HStack {
                    Text("주간날씨")
                        .font(.title)
                        .bold()
                        .padding(.leading, 15.0)
               
                    Spacer()
                }
                
                Divider()
                    .frame(width: 365)
                    .padding(.bottom)
                    .padding(.top, -7)
                
                 
                    Image("weekWeather")
                    .padding(.bottom)
                    
                   
                HStack {
                    Text("상세 날씨")
                        .font(.title)
                        .bold()
                        .padding(.leading, 15.0)
                    Spacer()
                }
                Divider()
                    .frame(width: 365)
                    .padding(.bottom,25)
                    .padding(.top, -7)
                
                Image("specificWeather")
            }
        }.ignoresSafeArea(edges:.top)
            .sheet(isPresented: $locationShow) {
                LocationView(locationShow: $locationShow)
            }
    }
}
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
