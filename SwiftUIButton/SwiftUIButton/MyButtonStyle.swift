//
//  MyButtonStyle.swift
//  SwiftUIButton
//
//  Created by Herry on 2023/03/19.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
//    case rotate
//    case blur
}

struct MyButtonStyle : ButtonStyle {
    
    var color : Color
    var type : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                if (self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture {
                let haptic = UIImpactFeedbackGenerator(style: .heavy)
                haptic.impactOccurred()
            }
        
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("")
        } label: {
            Text("호호")
        }.buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            
    }
       
}
