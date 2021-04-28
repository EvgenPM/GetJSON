//
//  GetCommentResponce.swift
//  MVS-N
//
//  Created by admin on 10.03.2021.
//  Copyright © 2021 admin. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    init(json:Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failIntternetError }
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
