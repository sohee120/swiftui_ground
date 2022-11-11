//
//  MainWeatherThemeView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI

struct MainWeatherThemeView: View {
    @Binding var locationShow: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Image("sunnyImageThree")
                    .resizable()
                
                ZStack{
                    
                    Image("lookImage")
                        .offset(y:150)
                    VStack {
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
                        }).padding(10)
                            .background(.white.opacity(0.2))
                            .cornerRadius(30)
                            .shadow(radius: 5)
                        
                        Image(systemName: "sun.max.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.yellow)
                        
                        Text("13℃")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text("비소식 없이 화창함")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.bottom, 3)
                        
                        HStack {
                            
                            Text("최고: 17℃")
                                .padding(.trailing, 10)
                            Text("최저: 7℃")
                            
                        }
                        .padding(.bottom, 10)
                        
                        AccordionView()
              
                    }
                    .padding(12)
                    .frame(width: 360)
                    .background(.white.opacity(0.4))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .offset(y:-180)
                    
                }
                
            }
            .ignoresSafeArea(edges:.top)
        }
        
    }
}


struct AccordionView: View {
    
    @State var isAccordionExpanded: Bool = false
    
    var body: some View {
        VStack {
       
            DisclosureGroup("투표결과", isExpanded: $isAccordionExpanded) {
                VStack {
                    Image("graph")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("graph2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("graph3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }.padding()
        }
    }
}


struct MainWeatherThemeView_Previews: PreviewProvider {
    static var previews: some View {
        MainWeatherThemeView(locationShow:.constant(false))
    }
}
