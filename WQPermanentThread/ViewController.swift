//
//  ViewController.swift
//  WQPermanentThread
//
//  Created by chenweiqiang on 2020/5/8.
//  Copyright © 2020 chenweiqiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func pushNextVC(_ sender: UIButton) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

