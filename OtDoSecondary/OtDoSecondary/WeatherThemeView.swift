//
//  WeatherThemeView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI

struct WeatherThemeView: View {
    @Binding var locationShow: Bool
    
    var body: some View {
        ZStack{
            Color(.white)
            Image("skyImageTwo")
                .resizable()
            
            VStack {
                Spacer()
                    .frame(height: 10)
                Button(action: {
                    self.locationShow.toggle()
                }, label: {
                    HStack {
                        Image(systemName: "location.fill")
                            .foregroundColor(.blue)
                        Text("서울특별시 중구 ")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                })
                .padding(10)
                .background(.white.opacity(0.2))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                    .foregroundColor(.yellow)
                Text("13℃")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("비소식 없이 화창함")
                    .foregroundColor(.secondary)
                HStack {
                    VStack(alignment: .leading){
                        Text("최고 온도")
                            .fontWeight(.heavy)
                        Text("17℃")
                            .font(.title)
                        
                    }
                    .padding()
                    
                    Spacer()
                        .frame(width:120)
                    
                    VStack(alignment: .trailing){
                        Text("최저 온도")
                            .fontWeight(.heavy)
                        Text("7℃")
                            .font(.title)
                    }
                    .padding()
                   
                    
                }
                HStack{
                    Image("jacketImage")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Image("shirtsImage")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Image("pantsImage")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                .padding(12)
                .frame(width: 360)
                .background(.white.opacity(0.4))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                Group{
                    Text("하루동안 맑은 상태가 이어지겠습니다")
                        .font(.headline)
                        .fontWeight(.heavy)
                    
                    Text("일교차가 크므로 외출 전 얇은 외투 챙기기 ")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                    
                    Text("")
                    
                    Text("아우터")
                        .font(.title3)
                        .fontWeight(.heavy)
                    Text("블루종, 자켓, 야상, 가디건, 트렌치 코트  ")
                        .padding(.bottom, 1)
                    Text("상의")
                        .font(.title3)
                        .fontWeight(.heavy)
                    Text("니트, 맨투맨, 후드티 ")
                        .padding(.bottom, 1)
                    Text("하의")
                        .font(.title3)
                        .fontWeight(.heavy)
                    Text("청바지, 치마 + 스타킹  ")
                    
                }
                
            }
        }
        
        .ignoresSafeArea(edges:.top)
        
    }
}

struct WeatherThemeView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherThemeView(locationShow:.constant(false))
    }
}

