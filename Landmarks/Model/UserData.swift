//
//  UserData.swift
//  Landmarks
//
//  Created by chenc's Mac on 2024/7/12.
//

import SwiftUI
import Combine

// 引入 Combine 库，声明一个遵循 ObservableObject 协议的模型类型
//observable object 是数据的自定义对象，它可以从 SwiftUI 环境中的存储绑定到视图上。 SwiftUI 监视 observable object 中任何可能影响视图的修改，并在修改后显示正确的视图内容

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var userData_landmarks = landmarks
}
