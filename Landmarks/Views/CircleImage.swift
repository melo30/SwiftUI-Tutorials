//
//  CircleImage.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    
    var body: some View {
        image
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
//        Image("turtlerock")
//            .clipShape(.circle)
//            .overlay (Circle().stroke(.white, lineWidth: 4))
//            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
