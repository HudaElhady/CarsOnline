//
//    Car.swift
//
//    Create by MIS on 13/7/2018
//    Copyright © 2018. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Car : NSObject, NSCoding{
    
    var auctionInfo : AuctionInfo!
    var bodyAr : String!
    var bodyEn : String!
    var bodyId : Int!
    var carID : Int!
    var descriptionAr : String!
    var descriptionEn : String!
    var image : String!
    var imgCount : Int!
    var makeAr : String!
    var makeEn : String!
    var makeID : Int!
    var mileage : String!
    var modelAr : String!
    var modelEn : String!
    var modelID : Int!
    var sharingLink : String!
    var sharingMsgAr : String!
    var sharingMsgEn : String!
    var year : Int!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let auctionInfoData = dictionary["AuctionInfo"] as? [String:Any]{
            auctionInfo = AuctionInfo(fromDictionary: auctionInfoData)
        }
        bodyAr = dictionary["bodyAr"] as? String
        bodyEn = dictionary["bodyEn"] as? String
        bodyId = dictionary["bodyId"] as? Int
        carID = dictionary["carID"] as? Int
        descriptionAr = dictionary["descriptionAr"] as? String
        descriptionEn = dictionary["descriptionEn"] as? String
        image = dictionary["image"] as? String
        imgCount = dictionary["imgCount"] as? Int
        makeAr = dictionary["makeAr"] as? String
        makeEn = dictionary["makeEn"] as? String
        makeID = dictionary["makeID"] as? Int
        mileage = dictionary["mileage"] as? String
        modelAr = dictionary["modelAr"] as? String
        modelEn = dictionary["modelEn"] as? String
        modelID = dictionary["modelID"] as? Int
        sharingLink = dictionary["sharingLink"] as? String
        sharingMsgAr = dictionary["sharingMsgAr"] as? String
        sharingMsgEn = dictionary["sharingMsgEn"] as? String
        year = dictionary["year"] as? Int
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if auctionInfo != nil{
            dictionary["AuctionInfo"] = auctionInfo.toDictionary()
        }
        if bodyAr != nil{
            dictionary["bodyAr"] = bodyAr
        }
        if bodyEn != nil{
            dictionary["bodyEn"] = bodyEn
        }
        if bodyId != nil{
            dictionary["bodyId"] = bodyId
        }
        if carID != nil{
            dictionary["carID"] = carID
        }
        if descriptionAr != nil{
            dictionary["descriptionAr"] = descriptionAr
        }
        if descriptionEn != nil{
            dictionary["descriptionEn"] = descriptionEn
        }
        if image != nil{
            dictionary["image"] = image
        }
        if imgCount != nil{
            dictionary["imgCount"] = imgCount
        }
        if makeAr != nil{
            dictionary["makeAr"] = makeAr
        }
        if makeEn != nil{
            dictionary["makeEn"] = makeEn
        }
        if makeID != nil{
            dictionary["makeID"] = makeID
        }
        if mileage != nil{
            dictionary["mileage"] = mileage
        }
        if modelAr != nil{
            dictionary["modelAr"] = modelAr
        }
        if modelEn != nil{
            dictionary["modelEn"] = modelEn
        }
        if modelID != nil{
            dictionary["modelID"] = modelID
        }
        if sharingLink != nil{
            dictionary["sharingLink"] = sharingLink
        }
        if sharingMsgAr != nil{
            dictionary["sharingMsgAr"] = sharingMsgAr
        }
        if sharingMsgEn != nil{
            dictionary["sharingMsgEn"] = sharingMsgEn
        }
        if year != nil{
            dictionary["year"] = year
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        auctionInfo = aDecoder.decodeObject(forKey: "AuctionInfo") as? AuctionInfo
        bodyAr = aDecoder.decodeObject(forKey: "bodyAr") as? String
        bodyEn = aDecoder.decodeObject(forKey: "bodyEn") as? String
        bodyId = aDecoder.decodeObject(forKey: "bodyId") as? Int
        carID = aDecoder.decodeObject(forKey: "carID") as? Int
        descriptionAr = aDecoder.decodeObject(forKey: "descriptionAr") as? String
        descriptionEn = aDecoder.decodeObject(forKey: "descriptionEn") as? String
        image = aDecoder.decodeObject(forKey: "image") as? String
        imgCount = aDecoder.decodeObject(forKey: "imgCount") as? Int
        makeAr = aDecoder.decodeObject(forKey: "makeAr") as? String
        makeEn = aDecoder.decodeObject(forKey: "makeEn") as? String
        makeID = aDecoder.decodeObject(forKey: "makeID") as? Int
        mileage = aDecoder.decodeObject(forKey: "mileage") as? String
        modelAr = aDecoder.decodeObject(forKey: "modelAr") as? String
        modelEn = aDecoder.decodeObject(forKey: "modelEn") as? String
        modelID = aDecoder.decodeObject(forKey: "modelID") as? Int
        sharingLink = aDecoder.decodeObject(forKey: "sharingLink") as? String
        sharingMsgAr = aDecoder.decodeObject(forKey: "sharingMsgAr") as? String
        sharingMsgEn = aDecoder.decodeObject(forKey: "sharingMsgEn") as? String
        year = aDecoder.decodeObject(forKey: "year") as? Int
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if auctionInfo != nil{
            aCoder.encode(auctionInfo, forKey: "AuctionInfo")
        }
        if bodyAr != nil{
            aCoder.encode(bodyAr, forKey: "bodyAr")
        }
        if bodyEn != nil{
            aCoder.encode(bodyEn, forKey: "bodyEn")
        }
        if bodyId != nil{
            aCoder.encode(bodyId, forKey: "bodyId")
        }
        if carID != nil{
            aCoder.encode(carID, forKey: "carID")
        }
        if descriptionAr != nil{
            aCoder.encode(descriptionAr, forKey: "descriptionAr")
        }
        if descriptionEn != nil{
            aCoder.encode(descriptionEn, forKey: "descriptionEn")
        }
        if image != nil{
            aCoder.encode(image, forKey: "image")
        }
        if imgCount != nil{
            aCoder.encode(imgCount, forKey: "imgCount")
        }
        if makeAr != nil{
            aCoder.encode(makeAr, forKey: "makeAr")
        }
        if makeEn != nil{
            aCoder.encode(makeEn, forKey: "makeEn")
        }
        if makeID != nil{
            aCoder.encode(makeID, forKey: "makeID")
        }
        if mileage != nil{
            aCoder.encode(mileage, forKey: "mileage")
        }
        if modelAr != nil{
            aCoder.encode(modelAr, forKey: "modelAr")
        }
        if modelEn != nil{
            aCoder.encode(modelEn, forKey: "modelEn")
        }
        if modelID != nil{
            aCoder.encode(modelID, forKey: "modelID")
        }
        if sharingLink != nil{
            aCoder.encode(sharingLink, forKey: "sharingLink")
        }
        if sharingMsgAr != nil{
            aCoder.encode(sharingMsgAr, forKey: "sharingMsgAr")
        }
        if sharingMsgEn != nil{
            aCoder.encode(sharingMsgEn, forKey: "sharingMsgEn")
        }
        if year != nil{
            aCoder.encode(year, forKey: "year")
        }
        
    }
    
}
