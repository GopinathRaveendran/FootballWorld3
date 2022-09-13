//
//  FootballManager.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//

import Foundation


class FootballManager {
    
    static var apikey = "5f257202ffdb4c8293bbb64223b08433"
    static var searchResult = "matches"
    static func fetchData(completion: @escaping ([Match])  -> () ){
        
        guard let url = URL(string: "https://api.football-data.org/v4/\(searchResult)") else  {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(apikey, forHTTPHeaderField: "X-Auth-Token")
        let config = URLSessionConfiguration.default
        config.waitsForConnectivity = true
        
        URLSession(configuration: config).dataTask(with: request) { data, response, error in
            
            guard error == nil else {
                print((error?.localizedDescription)!)
                return
                
            }
            
            guard let data = data else {
                print(String(describing:error))
                return
                
            }
            
            do{
                let jsonData = try JSONDecoder().decode(Football.self, from: data)
//                dump(jsonData)
                completion(jsonData.matches ?? [])
                
                
            }catch{
                print("err:::", error)
            }
            
        }.resume()

    }
}
