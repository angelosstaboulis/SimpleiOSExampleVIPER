//
//  ViewController.swift
//  VIPERExampleiOS
//
//  Created by Angelos Staboulis on 18/4/21.
//

import UIKit

class ViewController: UIViewController,IPInfoDelegate{
   
    
    var presenter:IPInfoPresenter!
    @IBOutlet var ipinfoview: IPInfoView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchIPController()
        // Do any additional setup after loading the view.
    }


}
extension ViewController{
    func configureView(view:IPInfoView){
        view.lblValue.text = presenter?.ipinfo.first?.ip
    }
    
    func fetchIP(completion:@escaping ([IPInfo])->()){
        presenter.interactor.fetchIP { (array) in
            self.presenter.ipinfo = array
            completion(array)
        }
    }
    func showGetIPInfo() {
        
    }
}
extension ViewController{
    func fetchIPController(){
        self.ipinfoview.lblValue.text = "Machine IP"
        presenter = IPInfoPresenter()
        presenter.delegate = self
        presenter?.fetchIP(completion: { (array) in
            self.presenter?.ipinfo = array
            DispatchQueue.main.async{
                self.configureView(view: self.ipinfoview)
            }
        })
    }
}
