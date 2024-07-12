//
//  LandmarkList.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI

/**
 重点说明：
 1.在闭包中返回LandmarkRow,我们就完成了自动生成内容的list。这会给 landmarks 数组中的每一个元素创建一个LandmarkRow
        
 2.此时的List就相当于TableView,LandmarkRow相当于Cell
 
 3.@State标识一个可以动态双向绑定的属性showFavoritesOnly
 
 4.使用 $ 前缀来访问一个状态变量或者它的属性的绑定
 
 5.若要在列表中组合静态和动态视图，或者将两个或多个不同的动态视图组合在一起，要使用 ForEach 类型，而不是将数据集合传递给 List(注意理解这里刷新列表和OC的差异)
 */

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly, label: {
                Text("Favorites only")
            })
            
            ForEach(userData.userData_landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationTitle("Lanmarks")
    }
}

#Preview {
    NavigationView {
        LandmarkList()
            .environmentObject(UserData())
    }
}
