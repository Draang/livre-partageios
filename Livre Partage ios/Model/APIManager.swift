//
//  APIManager.swift
//  Livre Partage ios
//
//  Created by Angel Contrers on 03/12/2020.
//

import Foundation
public class Data:Decodable{
    var kind:String?
    var totalItems: Int?
    var items:[item]?
    init (kind:String,totalItems:Int,items:[item]){
        self.kind=kind
        self.totalItems=totalItems
        self.items=items
    }
    
}
public class item:Decodable{
    var kind:String?
    var id:String?
    var etag:String?
    var selfLink:String?
    var volumeInfo:volume?
    init(kind:String,id:String,etag:String,selfLink:String,volumeInfo:volume){
        self.kind=kind
        self.id=id
        self.etag=etag
        self.selfLink=selfLink
        self.volumeInfo=volumeInfo
    }
}

class volume :Decodable{
    var title:String?
    var subtitle:String?
    var authors : [String]?
    var publisher:String?
    var publishedDate:String?
    var industryIdentifiers:[idnt]?
    var readingModes:read?
    var pageCount:Int?
    var printType:String?
    var averageRating:Int?
    var ratingsCount:Int?
    var maturityRatig:String?
    var allowAnonLogging:Bool?
    var contentVersion:String?
    var panelizationSummary:bubb?
    var imageLinks:image?
    var language:String?
    var previewLink:String?
    var infoLink:String?
    var canonicalVolumeLink:String?
    var saleInfo:sale?
    var accessInfo:accInf?
    var searchInfo:side?
    init(title:String,subtitle:String,authors : [String],publisher:String,publishedDate:String,industryIdentifiers:[idnt],readingModes:read,pageCount:Int,printType:String,averageRating:Int,ratingsCount:Int,maturityRatig:String,allowAnonLogging:Bool,contentVersion:String,panelizationSummary:bubb,imageLinks:image,language:String,previewLink:String,infoLink:String,canonicalVolumeLink:String,saleInfo:sale,accessInfo:accInf,searchInfo:side) {
        self.title=title
        self.subtitle=subtitle
        self.authors=authors
        self.publisher=publisher
        self.publishedDate=publishedDate
        self.industryIdentifiers=industryIdentifiers
        self .readingModes=readingModes
        self.pageCount=pageCount
        self.printType=printType
        self.averageRating=averageRating
        self.ratingsCount=ratingsCount
        self.maturityRatig=maturityRatig
        self.allowAnonLogging=allowAnonLogging
        self.contentVersion=contentVersion
        self.panelizationSummary=panelizationSummary
        self.imageLinks=imageLinks
        self.language=language
        self.previewLink=previewLink
        self.infoLink=infoLink
        self.canonicalVolumeLink=canonicalVolumeLink
        self.saleInfo=saleInfo
        self.accessInfo=accessInfo
        self.searchInfo=searchInfo
        
    }
    
}
class side:Decodable {
    var textSnippet:String?
    init(textSnippet:String) {
        self.textSnippet=textSnippet
    }
}
class accInf:Decodable {
    var country:String?
    var viewability:String?
    var embeddable:Bool?
    var publicDomain:Bool?
    var textToSpeechPermission:String?
    var epub:ep?
    var pdf:pf?
    var webReaderLink:String?
    var accessViewStatus:String?
    init(country:String,viewability:String,embeddable:Bool,publicDomain:Bool,textToSpeechPermission:String,epub:ep,pdf:pf,webReaderLink:String,accessViewStatus:String) {
        self.country=country
        self.viewability=viewability
        self.embeddable=embeddable
        self.publicDomain=publicDomain
        self.textToSpeechPermission=textToSpeechPermission
        self.epub=epub
        self.pdf=pdf
        self.webReaderLink=webReaderLink
        self.accessViewStatus=accessViewStatus
    }
}
class pf:Decodable{
    var isAvailable:Bool?
    init(isAvailable:Bool) {
        self.isAvailable=isAvailable
    }
}
class ep:Codable {
    var isAvailable:Bool?
    init(isAvailable:Bool) {
        self.isAvailable=isAvailable
    }}
class sale:Codable {
    var country:String?
    var saleability:String?
    var isEbook:Bool?
    init(country:String,saleability:String,isEbook:Bool) {
        self.country=country
        self.saleability=saleability
        self.isEbook=isEbook
    }
}
class image:Codable {
    var smallThumbnail:String?
    var thumbnail:String?
    init(smallThumbnail:String,thumbnail:String) {
        self.smallThumbnail=smallThumbnail
        self.thumbnail=thumbnail
    }
}

class bubb:Codable {
    var containsEpubBubbles:Bool?
    var containsImageBubbles:Bool?
    init(containsEpubBubbles:Bool,containsImageBubbles:Bool) {
        self.containsEpubBubbles=containsEpubBubbles
        self.containsImageBubbles=containsImageBubbles
    }
}
class read:Codable {
    var text:Bool?
    var image:Bool?
    init(text:Bool,image:Bool) {
        
        self.text=text
        self.image=image
    }
}
class idnt:Codable{
    var type:String?
    var identifier:String?
}
