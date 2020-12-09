//
//  API.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 06/12/2020.
//

import Foundation
class Api{
	public func getLivresSearch(q: String, res: @escaping (DataResult)->Void){
		
		//On encode la recherche pour ajouter % à la place des eespaces par exemple
		let escapedSearchString = q.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
		
		let escapedURLString = "https://www.googleapis.com/books/v1/volumes?q=\(escapedSearchString)" //&orderBy=relevance&maxResults=40"
		//Ensuite on la convertie en URL
		let url = URL(string: escapedURLString)
		
		let session = URLSession.shared.dataTask(with: url!) {
			(data,response,error)in
			do {
				if let dataResult = data {
					do {
						let jsonDecoder = JSONDecoder()
						let livreResult = try jsonDecoder.decode(DataResult.self, from: dataResult)
						res(livreResult)
					} catch {
						print("Error")
					}
				} else {
					print("No result")
				}
			}catch{
				print(error.localizedDescription)
			}
		}
		session.resume()
    
    }
    
}
