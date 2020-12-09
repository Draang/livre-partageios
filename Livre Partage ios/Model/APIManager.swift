//
//  APIManager.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 03/12/2020.
//

import Foundation

public class DataResult: Decodable {
    var kind: String?
    var totalItems: Int?
    var items : [Item]?
}

public class Item: Decodable {
    var kind: String?
    var id: String?
    var etag: String?
    var selfLink: String?
    var volumeInfo: Volume?
}

class Volume: Decodable {
    var title:String?
    var subtitle:String?
    var authors: [String]?
    var publisher:String?
    var publishedDate: String?
	var description: String?
    var industryIdentifiers:[Idnt]?
    var readingModes: Read?
    var pageCount:Int?
    var printType:String?
    var averageRating: Double?
    var ratingsCount: Int?
    var maturityRatig: String?
    var allowAnonLogging: Bool?
    var contentVersion: String?
    var panelizationSummary: Bubb?
    var imageLinks: ImageLinks?
    var language: String?
    var previewLink: String?
    var infoLink: String?
    var canonicalVolumeLink: String?
    var saleInfo: Sale?
    var accessInfo: AccInf?
    var searchInfo: Side?
    
}
class Side: Decodable {
    var textSnippet: String?
    
	init(textSnippet:String) {
        self.textSnippet=textSnippet
    }
}
class AccInf: Decodable {
    var country: String?
    var viewability: String?
    var embeddable: Bool?
    var publicDomain: Bool?
    var textToSpeechPermission: String?
    var epub: Epub?
    var pdf: Pdf?
    var webReaderLink: String?
    var accessViewStatus: String?
}

class Pdf: Decodable {
    var isAvailable: Bool?
}

class Epub:Codable {
    var isAvailable: Bool?
}

class Sale: Codable {
    var country:String?
    var saleability:String?
    var isEbook:Bool?
}

class ImageLinks: Codable {
    var smallThumbnail:String?
    var thumbnail:String?
}

class Bubb: Codable {
    var containsEpubBubbles: Bool?
    var containsImageBubbles: Bool?
}

class Read: Codable {
    var text: Bool?
    var image: Bool?
}

class Idnt: Codable {
    var type:String?
    var identifier:String?
}
