//
//  CommentNetworkService.swift
//  MVS-N
//
//  Created by admin on 10.03.2021.
//  Copyright © 2021 admin. All rights reserved.
//

import Foundation
class CommentNetworkService {
    private init() {}
    
    static func getComments (completion:@escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json:json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
    
    
}
