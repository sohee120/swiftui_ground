//
//  ComunityView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI

struct ComunityView: View {
    private let images = ["banner", "banner2"]
    @State private var like = false
    
    var body: some View {
        
        ScrollView {
            VStack {
                TabView {
                    ForEach(images, id: \.self) { item in
                        Image(item)
                            .resizable()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                //.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .frame(height: 250)
                .padding(.bottom, 5)
                
                
                
                HStack {
                    //OOTD titme
                    Text("OOTD")
                        .font(.title)
                        .bold()
                        .padding(.leading, 15.0)
                    
                    Spacer()
                    //더보기 button
                    Button {
                        
                    } label: {
                        Text("더보기")
                            .padding(.trailing, 15.0)
                    }
                    
                }
                Divider()
                    .frame(width: 365)
                    .padding(.bottom)
                    .padding(.top, -7)
                HStack {
                    //OOTD photo
                    Image("ootd1")
                        .resizable()
                        .frame(height: 150)
                        .aspectRatio(contentMode: .fit)
                    Image("ootd2")
                        .resizable()
                        .frame(height: 150)
                        .aspectRatio(contentMode: .fit)
                    Image("ootd3")
                        .resizable()
                        .frame(height: 150)
                        .aspectRatio(contentMode: .fit)
                }
                
                //Comnunity title
                HStack {
                    Text("Comunity")
                        .font(.title)
                        .bold()
                        .padding(.leading, 15.0)
                    Spacer()
                }
                Divider()
                    .frame(width: 365)
                    .padding(.bottom,25)
                    .padding(.top, -7)
                //Comunity -> 스크롤 뷰?
                //ScrollView {
                
                ForEach((0...5), id: \.self) { _ in
                    VStack(alignment: .leading) {
                        HStack {
                            Image("userImage")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                            Text("chap")
                                .bold()
                            Spacer()
                            Text("22.11.08")
                        }
                        
                        Text("content")
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
        
                        
                        Divider()
                        
                        HStack {
                            Button {
                                like.toggle()
                            } label: {
                                like ? Image(systemName: "heart.fill") : Image(systemName: "heart")
                            }
                            .foregroundColor(.red)
                            Button {
                                
                            } label: {
                                Text("댓글달기")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .padding(12)
                    .frame(width: 360)
                    .background(.white)
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    
                }
            }
        }
    }
}

struct ComunityView_Previews: PreviewProvider {
    static var previews: some View {
        ComunityView()
    }
}
