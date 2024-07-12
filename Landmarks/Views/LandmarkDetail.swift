//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    
    var landmark : Landmark
    
    var landmarkIndex : Int {
        //        return userData.userData_landmarks.firstIndex(where: {$0.id == landmark.id})!
        for (index, element) in userData.userData_landmarks.enumerated() {
            if element.id == landmark.id {
                return index
            }
        }
        return 0
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                            .font(.title)
                    Button(action: {
                        userData.userData_landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.userData_landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }else {
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                        }
                    }
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            Spacer()
        }
        .navigationTitle(Text(landmark.name))
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
        .environmentObject(UserData())
}
