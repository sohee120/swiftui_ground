//
//  LocationView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI


struct LocationView: View {
    let array = [
        "서울특별시", "대구광역시", "인천광역시", "제주시", "충주시", "청주시",
        "대전광역시", "광주광역시", "세종시", "울산광역시"
    ]
    
    @State private var searchText = ""
    @Binding var locationShow: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                VStack {
                    if searchText != ""{
                        List {
                            ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
                                searchText in Text(searchText)
                            }
                        }
                        .listStyle(PlainListStyle())
                    }
                    
                        List{
                            Text("서울특별시")
                            Text("제주시")
                        }
                    
                    
                }
            }
            .navigationBarTitle("위치")
            .navigationBarItems(leading:
                                    HStack{
                Button(action: { self.locationShow.toggle()
                }) {
                    HStack {
                        Text("추가")
                            .foregroundColor(.blue)
                    }
                }
                
                Spacer()
            }
            )
            .navigationBarItems(trailing:
                                    HStack{
                Button(action: {
                }) {
                        Text("편집")
                            .foregroundColor(.blue)
                }
            }
            )
            
        }
    }
    
    
}

struct locationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(locationShow:.constant(false))
    }
}

