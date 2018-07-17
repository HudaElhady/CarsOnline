//
//    AuctionInfo.swift
//
//    Create by MIS on 13/7/2018
//    Copyright © 2018. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class AuctionInfo : NSObject, NSCoding{
    
    var vATPercent : Int!
    var bids : Int!
    var currencyAr : String!
    var currencyEn : String!
    var currentPrice : Int!
    var endDate : Int!
    var endDateAr : String!
    var endDateEn : String!
    var iCarId : Int!
    var iVinNumber : String!
    var isModified : Int!
    var itemid : Int!
    var lot : Int!
    var minIncrement : Int!
    var priority : Int!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        vATPercent = dictionary["VATPercent"] as? Int
        bids = dictionary["bids"] as? Int
        currencyAr = dictionary["currencyAr"] as? String
        currencyEn = dictionary["currencyEn"] as? String
        currentPrice = dictionary["currentPrice"] as? Int
        endDate = dictionary["endDate"] as? Int
        endDateAr = dictionary["endDateAr"] as? String
        endDateEn = dictionary["endDateEn"] as? String
        iCarId = dictionary["iCarId"] as? Int
        iVinNumber = dictionary["iVinNumber"] as? String
        isModified = dictionary["isModified"] as? Int
        itemid = dictionary["itemid"] as? Int
        lot = dictionary["lot"] as? Int
        minIncrement = dictionary["minIncrement"] as? Int
        priority = dictionary["priority"] as? Int
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if vATPercent != nil{
            dictionary["VATPercent"] = vATPercent
        }
        if bids != nil{
            dictionary["bids"] = bids
        }
        if currencyAr != nil{
            dictionary["currencyAr"] = currencyAr
        }
        if currencyEn != nil{
            dictionary["currencyEn"] = currencyEn
        }
        if currentPrice != nil{
            dictionary["currentPrice"] = currentPrice
        }
        if endDate != nil{
            dictionary["endDate"] = endDate
        }
        if endDateAr != nil{
            dictionary["endDateAr"] = endDateAr
        }
        if endDateEn != nil{
            dictionary["endDateEn"] = endDateEn
        }
        if iCarId != nil{
            dictionary["iCarId"] = iCarId
        }
        if iVinNumber != nil{
            dictionary["iVinNumber"] = iVinNumber
        }
        if isModified != nil{
            dictionary["isModified"] = isModified
        }
        if itemid != nil{
            dictionary["itemid"] = itemid
        }
        if lot != nil{
            dictionary["lot"] = lot
        }
        if minIncrement != nil{
            dictionary["minIncrement"] = minIncrement
        }
        if priority != nil{
            dictionary["priority"] = priority
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        vATPercent = aDecoder.decodeObject(forKey: "VATPercent") as? Int
        bids = aDecoder.decodeObject(forKey: "bids") as? Int
        currencyAr = aDecoder.decodeObject(forKey: "currencyAr") as? String
        currencyEn = aDecoder.decodeObject(forKey: "currencyEn") as? String
        currentPrice = aDecoder.decodeObject(forKey: "currentPrice") as? Int
        endDate = aDecoder.decodeObject(forKey: "endDate") as? Int
        endDateAr = aDecoder.decodeObject(forKey: "endDateAr") as? String
        endDateEn = aDecoder.decodeObject(forKey: "endDateEn") as? String
        iCarId = aDecoder.decodeObject(forKey: "iCarId") as? Int
        iVinNumber = aDecoder.decodeObject(forKey: "iVinNumber") as? String
        isModified = aDecoder.decodeObject(forKey: "isModified") as? Int
        itemid = aDecoder.decodeObject(forKey: "itemid") as? Int
        lot = aDecoder.decodeObject(forKey: "lot") as? Int
        minIncrement = aDecoder.decodeObject(forKey: "minIncrement") as? Int
        priority = aDecoder.decodeObject(forKey: "priority") as? Int
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if vATPercent != nil{
            aCoder.encode(vATPercent, forKey: "VATPercent")
        }
        if bids != nil{
            aCoder.encode(bids, forKey: "bids")
        }
        if currencyAr != nil{
            aCoder.encode(currencyAr, forKey: "currencyAr")
        }
        if currencyEn != nil{
            aCoder.encode(currencyEn, forKey: "currencyEn")
        }
        if currentPrice != nil{
            aCoder.encode(currentPrice, forKey: "currentPrice")
        }
        if endDate != nil{
            aCoder.encode(endDate, forKey: "endDate")
        }
        if endDateAr != nil{
            aCoder.encode(endDateAr, forKey: "endDateAr")
        }
        if endDateEn != nil{
            aCoder.encode(endDateEn, forKey: "endDateEn")
        }
        if iCarId != nil{
            aCoder.encode(iCarId, forKey: "iCarId")
        }
        if iVinNumber != nil{
            aCoder.encode(iVinNumber, forKey: "iVinNumber")
        }
        if isModified != nil{
            aCoder.encode(isModified, forKey: "isModified")
        }
        if itemid != nil{
            aCoder.encode(itemid, forKey: "itemid")
        }
        if lot != nil{
            aCoder.encode(lot, forKey: "lot")
        }
        if minIncrement != nil{
            aCoder.encode(minIncrement, forKey: "minIncrement")
        }
        if priority != nil{
            aCoder.encode(priority, forKey: "priority")
        }
        
    }
    
}
