//
//  SecondViewController.swift
//  WQPermanentThread
//
//  Created by chenweiqiang on 2020/5/8.
//  Copyright © 2020 chenweiqiang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var thread: WQPermanentThread!
    deinit {
        print("SecondViewController deinit")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let btn = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 40))
        btn.setTitle("停止线程", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(stopClick), for: .touchUpInside)
        self.view.addSubview(btn)
        
        self.thread = WQPermanentThread()
        // Do any additional setup after loading the view.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.thread.executeTask {
            print("执行任务--\(Thread.current)")
        }
    }
   
    @objc func stopClick() {
        self.thread.stop()
    }

}
