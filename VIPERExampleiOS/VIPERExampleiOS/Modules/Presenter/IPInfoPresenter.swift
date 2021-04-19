//
//  IPInfoPresenter.swift
//  VIPERExampleiOS
//
//  Created by Angelos Staboulis on 18/4/21.
//

import Foundation
protocol IPInfoDelegate:AnyObject
{
    func configureView(view:IPInfoView)
    func fetchIP(completion:@escaping ([IPInfo])->())
    func showGetIPInfo()
}
class IPInfoPresenter{
    init(model:[IPInfo]?=nil) {
        interactor = IPInfoInteractor()
        if let getip = model {
            ipinfo = getip            
        }
    }
    weak var delegate:IPInfoDelegate?
    
    var interactor:IPInfoInteractor!
    
    var ipinfo:[IPInfo] = []
    
    func configureView(view:IPInfoView){
        delegate?.configureView(view: view)
    }
    
    func showGetIPInfo(){
        delegate?.showGetIPInfo()
    }
    
    func fetchIP(completion:@escaping ([IPInfo])->()){
        delegate?.fetchIP(completion: completion)
    }
}
