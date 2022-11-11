//
//  WriteOotd.swift
//  OtDo
//
//  Created by do hee kim on 2022/11/09.
//

import SwiftUI

struct WriteOotd: View {
    @Binding var firstNaviLinkActive: Bool
    @State private var ootd: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "photo.on.rectangle.angled")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.blue)
                .padding(150)
                .border(.gray)
            
            TextField("글 내용을 적어주세요", text: $ootd)
            Spacer()
            TextField("Tag", text: $ootd)
            Spacer()
            
            
            
            Button {
                firstNaviLinkActive = false
            } label: {
                Text("글쓰기")
                    .bold()
                    .font(.title)
            }
            .frame(width: 330, height: 80)
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(20)


        }
        .padding(20)
    }
}

struct WriteOotd_Previews: PreviewProvider {
    static var previews: some View {
        WriteOotd(firstNaviLinkActive: .constant(true))
    }
}
