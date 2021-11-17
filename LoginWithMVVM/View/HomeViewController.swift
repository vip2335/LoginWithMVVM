//
//  SecondViewController.swift
//  LoginWithMVVM
//
//  Created by macmini17 on 11/11/21.
//

import UIKit

class HomeViewController: UIViewController {
    var viewModel:HomeViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel?.name)
        self.title = viewModel?.name
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    init(viewModel:HomeViewModel) {
       
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
//    func initWith (viewModel:HomeViewModel) {
//        var homeVC =  self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        return homeVC
//    }
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
}
