//
//  SwiftUI_TutorialsApp.swift
//  SwiftUI_Tutorials
//
//  Created by Tuấn Nguyễn on 08/10/2022.
//

import SwiftUI

@main
struct SwiftUI_TutorialsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
