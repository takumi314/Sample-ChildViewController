//
//  SecondViewController.swift
//  Sample-ChildViewController
//
//  Created by NishiokaKohei on 2018/07/03.
//  Copyright © 2018年 Takumi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var errorContainerView: UIView!
    
    @IBOutlet weak var loadingContainerView: UIView!
    
    @IBOutlet weak var firstContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        errorContainerView.isHidden = true
        loadingContainerView.isHidden = true
        firstContainerView.isHidden = true

        loadItems()
    }

    func loadItems() {
        let loadingViewController = LoadingViewController()
        loadingViewController.view.backgroundColor = .gray

        loadingContainerView.addSubview(loadingViewController.view)

        addChildViewController(loadingViewController)
        loadingViewController.view.frame = loadingContainerView.frame

        self.view.addSubview(loadingViewController.view)
        loadingViewController.didMove(toParentViewController: self)

        add(loadingViewController)
        print("start ...")

        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            [weak self] in
            loadingViewController.remove()
            print("stop!")

            // show error
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
