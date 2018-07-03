//
//  ViewController.swift
//  Sample-ChildViewController
//
//  Created by NishiokaKohei on 2018/05/29.
//  Copyright © 2018年 Takumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTappedNext(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "First", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: FirstViewController.identidier)
        present(vc, animated: true, completion: nil)
    }


    @IBAction func onTappedSecond(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: SecondViewController.identidier)
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
    }


}

