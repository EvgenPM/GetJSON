//
//  Networkservice.swift
//  MVS-N
//
//  Created by admin on 10.03.2021.
//  Copyright © 2021 admin. All rights reserved.
//

import Foundation

class NetworkService {
    private init () {}
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping(Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, responce, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
            } .resume()
    
    }
}
