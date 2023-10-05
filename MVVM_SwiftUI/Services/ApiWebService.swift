//
//  ApiWebService.swift
//  MVVM_SwiftUI
//
//  Created by mac on 05/10/2023.
//

import Foundation
import Alamofire

class ApiWebService {
    static let shared = ApiWebService()
    
    func fetchMovieList(completion: (([Movie]?) -> Void)? = nil) {
        let url = "https://minhdev2006.com/PHP_API/getMovies.php"
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil)
            .response { resp in
                switch resp.result {
                    case .success(let data):
                        do {
                            if let myData = data {
                                let jsonData = try JSONDecoder().decode([Movie].self, from: myData)
                                print(jsonData)
                                completion?(jsonData)
                            }
                        } catch {
                            print(error.localizedDescription)
                            completion?(nil)
                        }
                    case .failure(let error):
                    print(error.localizedDescription)
                    completion?(nil)
                }
            }
    }
}
