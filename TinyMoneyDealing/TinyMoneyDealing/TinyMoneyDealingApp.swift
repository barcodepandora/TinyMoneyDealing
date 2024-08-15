//
//  TinyMoneyDealingApp.swift
//  TinyMoneyDealing
//
//  Created by Juan Manuel Moreno on 15/08/24.
//

import SwiftUI

@main
struct TinyMoneyDealingApp: App {
    
    @StateObject private var vm = TinyMoneyDealingViewModel()
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            TinyMoneyDealingView().environmentObject(vm)
        }
    }
}
