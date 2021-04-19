//
//  IPInfoRouter.swift
//  VIPERExampleiOS
//
//  Created by Angelos Staboulis on 19/4/21.
//

import Foundation
import UIKit

class IPInfoRouter{
    static func showGetIPInfo()->UIViewController{
        let storyboardIPInfo = UIStoryboard(name: "Main", bundle: nil)
        let vc:ViewController = storyboardIPInfo.instantiateViewController(identifier: "ViewController") as! ViewController
        return vc
    }
}
