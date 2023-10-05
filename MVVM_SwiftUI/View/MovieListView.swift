//
//  MovieListView.swift
//  MVVM_SwiftUI
//
//  Created by mac on 05/10/2023.
//

import Foundation
import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel: MoviesViewModel
    
    var body: some View {
        List(viewModel.movies) { movie in
            MovieView(movie: movie)
        }
        .onAppear {
            viewModel.getMovies()
        }
    }
}
