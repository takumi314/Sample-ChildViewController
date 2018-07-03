//
//  ErrorViewController.swift
//  Sample-ChildViewController
//
//  Created by NishiokaKohei on 2018/05/30.
//  Copyright © 2018年 Takumi. All rights reserved.
//

import UIKit

class ErrorViewController: UIViewController {

    var reloadHandler: () -> Void = {}

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onTappedReloading(_ sender: UIButton) {
        reloadHandler()
    }

    @IBAction func onTappedBacking(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}


