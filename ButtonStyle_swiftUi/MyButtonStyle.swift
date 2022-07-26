//
//  MyButtonStyle.swift
//  ButtonStyle_swiftUi
//
//  Created by minkyuLee on 2022/07/27.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
//    case smaller
//    case rotate
//    case blur
}

struct MyButtonStyle : ButtonStyle {
        
    var color : Color
    var type : ButtonType
    
    
    func makeBody(configuration: Configuration) -> some View {
        
        
        configuration
            .label
            .font(.system(size:20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                if (self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }.onLongPressGesture {
                if (self.type == .long) {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
        
//        configuration.isPressed
        
//        configuration.self
        
    }
}


struct MyButtonStyle_Previiews: PreviewProvider {
    static var previews: some View {
        Button(action : {
            print("button clicked!")
        }, label: {
            Text("호호")
        }
        ).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
    }
}
