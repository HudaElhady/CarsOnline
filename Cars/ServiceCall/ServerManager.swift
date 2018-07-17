//
//  ServerManager.swift
//  Cars
//
//  Created by MIS on 7/13/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit
import Alamofire

enum Models:Int
{
    case Xx = 1
}

enum ErrorCode:Int
{
    case Caneled = -999
    case NoInternet = -1009
    case UnKnown = 000
}

struct Resource<A>
{
    var url: String
    let httpmethod: Alamofire.HTTPMethod
    let parse: (Any) -> A?
}

class ServerManager: NSObject
{
    var request:DataRequest?
    //Authentication
    private var headers = ["Content-Type": "application/json", "Accept": "application/json"]
    //MARK: - HTTPHandling -
    func httpConnect<A>(resource:Resource<A>, paramters:[String:Any]?, authentication:String?,AdditionalHeaders : [String:String]? = [:] , complation: @escaping (A?, Any?) -> (), errorHandler: @escaping (ErrorCode, Any?) -> ()  ) -> DataRequest?
    {
        
        let url = resource.url
        if let auth = authentication
        {
            headers["Authorization"] = "bearer \(auth)"
        }
        if AdditionalHeaders != nil {
            
            for header in AdditionalHeaders!{
                
                headers[header.key] = header.value
            }
        }
        request = Alamofire.request(url, method: resource.httpmethod, parameters: paramters, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200..<500).responseJSON
            { response in
                switch response.result
                {
                case .success:
                    let value = response.result.value
                    //print(value!)
                    let parse = resource.parse
                    let result = value.flatMap(parse)
                    DispatchQueue.main.async
                        {
                            complation(result, value)
                    }
                case .failure(let error):
                    //print(error._code)
                    print(error.localizedDescription)
                    DispatchQueue.main.async
                        {
                            if let errorEnum = ErrorCode(rawValue: error._code)
                            {
                                errorHandler(errorEnum, error)
                            }
                            else
                            {
                                errorHandler(ErrorCode(rawValue: 000)!, error)
                            }
                    }
                }
        }
        return request
    }
    func cancelRequest(dataRequest : DataRequest)
    {
        //        if let cancellingReq = request
        //        {
        dataRequest.cancel()
        //        }
    }
}


