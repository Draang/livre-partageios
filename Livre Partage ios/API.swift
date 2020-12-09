//
//  API.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 06/12/2020.
//

import Foundation
class Api{
    public func getLivresSearch(q:String,res: @escaping (Data)->Void){
        let url=URL(string: "https://www.googleapis.com/books/v1/volumes?q=\(q)&orderBy=relevance&maxResults=40")
        let session=URLSession.shared.dataTask(with: url!){
            (data,response,error)in
            do{
                if let dataResult=data{
                    do{
                        let jsonDecoder=JSONDecoder()
                        let livreResult=try jsonDecoder.decode(Data.self, from: dataResult)
                        res(livreResult)
                    }catch{
                        print("Error")
                    }
                }else{
                    print("No result")
                }
            }catch{
                print(error.localizedDescription)
        }
    }
        session.resume()
    
    }
    
}
