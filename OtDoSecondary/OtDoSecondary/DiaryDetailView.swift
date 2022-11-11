//  DiaryDetailView.swift
//  OtDoSecondary
//
//  Created by 장다영 on 2022/11/09.
//

import SwiftUI

struct DiaryDetailView: View {
    //@Binding var currentImg: Int
    @Binding var imgNumber: Int

    var body: some View {
        VStack {
            HStack() {
                // user Image
                Image("userImage")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                // user Name
                Text("chapssal")
                    .bold()
                Spacer()
            }
            .padding()

            Image("image\(imgNumber)")
                .resizable()
                .frame(width: 400, height: 350)

                .padding(12)

            HStack {
                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.leading, 20.0)

                Text("20℃")
                Spacer()
                Text("2022-11-09")
                    .padding(.trailing, 20.0)
            }

            Spacer()

            ScrollView {
                Text("오늘의 OOTD\n날씨가 너무 춥다❄️")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20.0)
                Text("#OtDo패션 #데일리룩 #패션 #otdo #오오티디 #데일리 #패션스타그램 #daily #일상 #dailylook #소통 #맞팔 #좋아요 #fashion #데일리코디 #셀피 #일상룩 #selfie #선팔 #셀카 #옷 #팔로우 #스트릿패션 #코디")
                    .foregroundColor(.blue)
                    .padding(20)
            }
            .padding(20)



            Spacer()
        }


    }
}

//struct DiaryDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiaryDetailView()
//    }
//}
