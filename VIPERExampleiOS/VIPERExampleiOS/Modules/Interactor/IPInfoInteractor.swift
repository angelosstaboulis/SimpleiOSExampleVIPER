//
//  IPInfoInteractor.swift
//  VIPERExampleiOS
//
//  Created by Angelos Staboulis on 18/4/21.
//

import Foundation
import Alamofire
import SwiftyJSON
class IPInfoInteractor{
    init(model:[IPInfo]?=nil){
        if let getip = model {
            ipinfo = getip
        }
    }
    var ipinfo:[IPInfo] = []
    func fetchIP(completion:@escaping ([IPInfo])->()){
        let urlMain = URL(string: "https://api.ipify.org?format=json")
        let request = URLRequest(url: urlMain!)
        AF.request(request)
            .responseJSON { (response) in
                let json = JSON(response.data!)
                self.ipinfo.append(IPInfo(ip: json["ip"].stringValue))
                completion(self.ipinfo)
            }
    }
}

