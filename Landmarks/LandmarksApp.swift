//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            CategoryHome()
                .environmentObject(UserData())//给 LandmarkList 添加 environmentObject(_:) 修饰符。这个更新可以确保 LandmarkList 在环境中持有 UserData 对象
        }
    }
}
