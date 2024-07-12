//
//  CategoryRow.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName : String
    var items : [Landmark]
    
    var body: some View {
        Text(self.categoryName)
            .font(.headline)
            .padding(.leading, 15)
            .padding(.top, 5)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top) {
                ForEach(self.items) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                        CategoryItem(landmark: landmark)
                    }
                }
            }
        }
    }
}

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(4)))
}
