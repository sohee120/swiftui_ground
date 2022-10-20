
//  GuessingNumber

import SwiftUI

struct ContentView: View {
    
    //1~99사이의 랜덤정수 생성
    @State private var randomNum: Int = Int.random(in: 1 ... 99)
    
    //텍스트 필드로 사용자에게 입력받을 값
    @State private var inputStr: String = ""
    
    //입력받은 문자열 정수형으로 변환
    @State private var inputNum: Int = 0
    
    //네모 안에 띄워줄 문자열
    @State private var displayStr: String = "? ?"
    
    //결과 확인 문자열
    @State private var displayResult: String = "숫자를 입력해주세요"
    
    @State private var isCorrect:Bool = false
    @State private var attempts: Int = 0
    
    //입력받은 값 확인하고 결과 알려주는 연산 프로퍼티
    var resultStr: String {
        get{
            inputNum = Int(self.inputStr) ?? 0
            if randomNum == inputNum {
                //비동기 처리
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
                    displayResult = "새로운 게임을 시작해보세요 !"
                    reset()
                }
                isCorrect = true
                displayStr = "\(inputNum)"
                return "정답입니다 !"
            }else if randomNum > inputNum {
                displayStr = "? ?"
                withAnimation(.default) { self.attempts += 1 }
                isCorrect = false
                return "\(inputStr)보다 크답니다 !"
            }else{
                displayStr = "? ?"
                withAnimation(.default) { self.attempts += 1 }
                isCorrect = false
                return "\(inputStr)보다 작답니다 !"
            }
        }
    }

    var body: some View {
        
        VStack{
            
            Text("Gussing Number🤔")
                .font(.largeTitle)
                .bold()
                .padding(40)

                Rectangle()
                    .cornerRadius(8)
                    .frame(width: 141, height: 141, alignment: .center)
                    .foregroundColor(Color(hue: 0.601, saturation: 0.0, brightness: 0.879))
                    .overlay(
                        Text(displayStr)
                            .font(.system(size: 70, weight: .heavy))
                            .modifier(Shake(animatableData: CGFloat(attempts)))
                    )
            
            
            Text("1~99 사이의 정수를 입력해주세요")
                .font(.caption)
                .padding()
            Text("임시 정답: \(randomNum)")
        
            HStack {
                Button {
                    inputNum = Int(self.inputStr) ?? 0
                    inputNum -= 1
                    inputStr = "\(inputNum)"
                } label: {
                    Image(systemName: "minus.square.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.296))
                }
                
                TextField("숫자 입력", text: $inputStr)
                    .multilineTextAlignment(.center)
                    .frame(width: 100, height: 30, alignment: .center)
                    .padding(20)
                
                Button{
                    inputNum = Int(self.inputStr) ?? 0
                    inputNum += 1
                    inputStr = "\(inputNum)"
                } label: {
                    Image(systemName: "plus.square.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.296))
                }
            } // HStack 끝
            .padding()
            
            Button {
                displayResult = resultStr
            } label: {
                Text("결과 알아보기")
                    .font(.title2)
                    .foregroundColor(.white)
                    .bold()
            }
            .disabled(inputStr == "")
            .frame(width: 270, height: 50, alignment: .center)
            .background(Color.black)
            .cornerRadius(10)

            Text(displayResult)
                .font(.title3)
                .padding()
        } // VStack 끝
    }
    
    func reset() {
        randomNum = Int.random(in: 1...99)
        inputStr = ""
        displayStr = "? ?"
        isCorrect = false
    }
    
    // 흔들리는 애니메이션 구조체
    struct Shake: GeometryEffect {
        var amount: CGFloat = 10
        var shakesPerUnit = 3
        var animatableData: CGFloat
        
        func effectValue(size: CGSize) -> ProjectionTransform {
            ProjectionTransform(CGAffineTransform(translationX:
                                                    amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),
                                                  y: 0))
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
