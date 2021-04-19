//
//  LaunchViewController.swift
//  VIPERExampleiOS
//
//  Created by Angelos Staboulis on 19/4/21.
//

import UIKit

class LaunchViewController: UIViewController,IPInfoDelegate {
    func configureView(view: IPInfoView) {
        
    }
    
    func fetchIP(completion: @escaping ([IPInfo]) -> ()) {
        
    }
    
    func showGetIPInfo() {
        presenter.showGetIPInfo()
    }
    
    var presenter:IPInfoPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = IPInfoPresenter()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGetIPInfo(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
