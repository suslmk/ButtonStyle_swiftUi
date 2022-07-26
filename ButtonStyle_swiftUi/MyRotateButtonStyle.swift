//
//  MyRotateButtonStyle.swift
//  ButtonStyle_swiftUi
//
//  Created by minkyuLee on 2022/07/27.
//

import SwiftUI


struct MyRotateButtonStyle : ButtonStyle {
        
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
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0)
                            //, anchor: .top
            )
            
        
//        configuration.isPressed
        
//        configuration.self
        
    }
}


struct MyRotateButtonStyle_Previiews: PreviewProvider {
    static var previews: some View {
        Button(action : {
            print("button clicked!")
        }, label: {
            Text("호호")
        }
        ).buttonStyle(MyRotateButtonStyle(color: Color.blue, type: .tab))
    }
}
