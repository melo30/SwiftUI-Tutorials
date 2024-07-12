//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//  列表Cell

import SwiftUI

struct LandmarkRow: View {
    //相当于cell中传入的Model
    var landmark : Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

