//
//  MoviesViewModel.swift
//  MVVM_SwiftUI
//
//  Created by mac on 05/10/2023.
//

import SwiftUI
import Combine

class MoviesViewModel: ObservableObject {
    
    @Published var movies = [Movie]()
    private var cancellables = Set<AnyCancellable>()
    
    func getMovies() {
        ApiWebService.shared.fetchMovieList { result in
            if let list = result {
                self.movies = list
            }
        }
    }
}
