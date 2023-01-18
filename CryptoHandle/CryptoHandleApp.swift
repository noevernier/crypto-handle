//
//  CryptoHandleApp.swift
//  CryptoHandle
//
//  Created by Noé VERNIER on 17/01/2023.
//

import SwiftUI

@main
struct CryptoHandleApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
