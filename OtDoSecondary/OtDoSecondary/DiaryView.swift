//
//  DiaryView.swift
//  OtDoSecondary
//
//  Created by 조형구 on 2022/11/09.
//

import SwiftUI

struct DiaryView: View {
    @State private var firstNaviLinkActive = false
    

    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    @State var currentImg: Int = 0
    
    var body: some View {
        NavigationView {
            VStack() {
                VStack {
                    // user Image
                    Image("userImage")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    // user Name
                    Text("chapssal")
                        .bold()
                }
                .padding(.bottom, 20.0)
                Spacer()
                
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 4) {
                            ForEach((1..<24), id: \.self) { i in
                                NavigationLink(destination: DiaryDetailView(imgNumber: .constant(i))) {
                                    Image("image\(i)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 125)
                                }
                                
                                
                            }
                        }
                    }
                    .padding(7)
                
                
                
                Spacer()
            }
            //.navigationTitle(Text("Diary"))
            .navigationBarItems(trailing: NavigationLink(destination: AddNewOotd(firstNaviLinkActive: $firstNaviLinkActive), isActive: $firstNaviLinkActive) {
                Text("Add")
            })
        }
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryView()
    }
}
