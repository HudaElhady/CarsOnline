//
//  CarServices.swift
//  Cars
//
//  Created by MIS on 7/13/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class CarServices: NSObject {
    
    static var carsResource = Resource<CarsRoot>(url: CarsURL, httpmethod: .get)
    { (json) -> CarsRoot? in
        if let jsonObj = json as? [String : Any]
        {
            let content = CarsRoot(fromDictionary: jsonObj)
            return content
        }
        return nil
    }
    
    //MARK: - Calls
    func getCars(complation: @escaping (CarsRoot? ) -> (), errorHandler: @escaping (ErrorCode) -> ())
    {
        
        let sm = ServerManager ()
      
        _ = sm.httpConnect(resource: CarServices.carsResource , paramters: nil, authentication: nil, complation:
            { (json, data) in
                if let result = json
                {
                    complation(result)
                }
        })
        { (error, msg) in
            
            errorHandler(error)
        }
    }
}
