//
//  MVVM_SwiftUIApp.swift
//  MVVM_SwiftUI
//
//  Created by mac on 05/10/2023.
//

import SwiftUI

@main
struct MVVM_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MovieListView(viewModel: MoviesViewModel())
        }
    }
}
