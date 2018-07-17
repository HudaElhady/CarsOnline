//
//    CarsRoot.swift
//
//    Create by MIS on 13/7/2018
//    Copyright © 2018. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class CarsRoot : NSObject, NSCoding{
    
    var cars : [Car]!
    var error : CarError!
    var refreshInterval : Int!
    var ticks : String!
    var alertAr : String!
    var alertEn : String!
    var count : Int!
    var endDate : Int!
    var sortDirection : String!
    var sortOption : String!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        cars = [Car]()
        if let carsArray = dictionary["Cars"] as? [[String:Any]]{
            for dic in carsArray{
                let value = Car(fromDictionary: dic)
                cars.append(value)
            }
        }
        if let errorData = dictionary["Error"] as? [String:Any]{
            error = CarError(fromDictionary: errorData)
        }
        refreshInterval = dictionary["RefreshInterval"] as? Int
        ticks = dictionary["Ticks"] as? String
        alertAr = dictionary["alertAr"] as? String
        alertEn = dictionary["alertEn"] as? String
        count = dictionary["count"] as? Int
        endDate = dictionary["endDate"] as? Int
        sortDirection = dictionary["sortDirection"] as? String
        sortOption = dictionary["sortOption"] as? String
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if cars != nil{
            var dictionaryElements = [[String:Any]]()
            for carsElement in cars {
                dictionaryElements.append(carsElement.toDictionary())
            }
            dictionary["Cars"] = dictionaryElements
        }
        if error != nil{
            dictionary["Error"] = error.toDictionary()
        }
        if refreshInterval != nil{
            dictionary["RefreshInterval"] = refreshInterval
        }
        if ticks != nil{
            dictionary["Ticks"] = ticks
        }
        if alertAr != nil{
            dictionary["alertAr"] = alertAr
        }
        if alertEn != nil{
            dictionary["alertEn"] = alertEn
        }
        if count != nil{
            dictionary["count"] = count
        }
        if endDate != nil{
            dictionary["endDate"] = endDate
        }
        if sortDirection != nil{
            dictionary["sortDirection"] = sortDirection
        }
        if sortOption != nil{
            dictionary["sortOption"] = sortOption
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        cars = aDecoder.decodeObject(forKey :"Cars") as? [Car]
        error = aDecoder.decodeObject(forKey: "Error") as? CarError
        refreshInterval = aDecoder.decodeObject(forKey: "RefreshInterval") as? Int
        ticks = aDecoder.decodeObject(forKey: "Ticks") as? String
        alertAr = aDecoder.decodeObject(forKey: "alertAr") as? String
        alertEn = aDecoder.decodeObject(forKey: "alertEn") as? String
        count = aDecoder.decodeObject(forKey: "count") as? Int
        endDate = aDecoder.decodeObject(forKey: "endDate") as? Int
        sortDirection = aDecoder.decodeObject(forKey: "sortDirection") as? String
        sortOption = aDecoder.decodeObject(forKey: "sortOption") as? String
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if cars != nil{
            aCoder.encode(cars, forKey: "Cars")
        }
        if error != nil{
            aCoder.encode(error, forKey: "Error")
        }
        if refreshInterval != nil{
            aCoder.encode(refreshInterval, forKey: "RefreshInterval")
        }
        if ticks != nil{
            aCoder.encode(ticks, forKey: "Ticks")
        }
        if alertAr != nil{
            aCoder.encode(alertAr, forKey: "alertAr")
        }
        if alertEn != nil{
            aCoder.encode(alertEn, forKey: "alertEn")
        }
        if count != nil{
            aCoder.encode(count, forKey: "count")
        }
        if endDate != nil{
            aCoder.encode(endDate, forKey: "endDate")
        }
        if sortDirection != nil{
            aCoder.encode(sortDirection, forKey: "sortDirection")
        }
        if sortOption != nil{
            aCoder.encode(sortOption, forKey: "sortOption")
        }
        
    }
    
}
