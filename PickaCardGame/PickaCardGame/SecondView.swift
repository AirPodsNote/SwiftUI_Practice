//
//  SecondView.swift
//  PickaCardGame
//
//  Created by Herry on 2023/03/21.
//

import SwiftUI
import ExytePopupView



struct SecondView: View {
    @State var shouldShowBottomSolidMessage : Bool = false
    @State var count = 0
    var array_card = ["qna1","qna2","qna2","qna2","qna2"]
    
    func createBottomSolidMessage() -> some View {
        Image(array_card[count])
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400)
    }
    
    
    var body: some View{
        
        ZStack{
            VStack(spacing: -80){
                Text("질문 카드한장을 선택해주세요.")
                    .font(.system(size: 25))
                    .padding(.top, 20)
                    .foregroundColor(.white)
                ZStack{
                    Image("card1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .position(x: 200, y: 200)
                    Image("card2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .position(x: 200, y: 215)
                    Image("card1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .position(x: 200, y: 230)
                    Image("card1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .position(x: 200, y: 245)
                    Image("card1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .position(x: 200, y: 260)
                    Button {
                        self.shouldShowBottomSolidMessage = true
                        count += 1
                    
                    } label: {
                        Image("card1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .position(x: 200, y: 275)
                    }
                }
                
                    ZStack{
                        
                        Image("card2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .position(x: 200, y: 200)
                        Image("card2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .position(x: 200, y: 215)
                        Image("card2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .position(x: 200, y: 230)
                        Image("card2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .position(x: 200, y: 245)
                        Image("card2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .position(x: 200, y: 260)
                        Button {
                            print("선택되었습니다.")
                 
                            
                        } label: {
                            Image("card2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .position(x: 200, y: 275)
                        }


                }
            }
            .background(.secondary)
        }.popup(isPresented: $shouldShowBottomSolidMessage) {
            self.createBottomSolidMessage()
        } customize: {
            $0.autohideIn(4).position(.top).type(.default).animation(.easeInOut).closeOnTap(true)
            
        }
               
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
