//
//  MovieView.swift
//  MVVM_SwiftUI
//
//  Created by mac on 05/10/2023.
//

import SwiftUI
import Combine
import SDWebImageSwiftUI

struct MovieView: View {
    
    private let movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    var body: some View {
        HStack {
            WebImage(url: URL(string: movie.thumbnail))
            .onSuccess { image, data, cacheType in
            }
            .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
            .placeholder(Image(systemName: "photo")) // Placeholder Image
            .placeholder {
                Rectangle().foregroundColor(.gray)
            }
            .indicator(.activity) // Activity Indicator
            .transition(.fade(duration: 0.5)) // Fade Transition with duration
            .scaledToFit()
            .frame(width: 120, height: 180, alignment: .leading)
            VStack(alignment: .leading, spacing: 15) {
                Text(movie.name)
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text(movie.director)
                    .font(.system(size: 14))
            }
        }
    }
    
}
