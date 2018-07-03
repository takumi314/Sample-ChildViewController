//
//  FirstViewController.swift
//  Sample-ChildViewController
//
//  Created by NishiokaKohei on 2018/05/30.
//  Copyright © 2018年 Takumi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    private let transition = OrgTransition()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        loadItems()
    }

    func loadItems() {
        let loadingViewController = LoadingViewController()
        loadingViewController.modalPresentationStyle = .overCurrentContext

        // UIVisualEffectViewを生成する
        let visualEffectView = UIVisualEffectView(frame: loadingViewController.view.frame)
        // エフェクトの種類を設定
        visualEffectView.effect = UIBlurEffect(style: .light)

        loadingViewController.view.insertSubview(visualEffectView, at: 0)
        
        add(loadingViewController)
        print("start ...")

        // Loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            [weak self] in
            loadingViewController.remove()
            print("stop!")

            // show error
            self?.handle()
        }
    }

    func handle() {
        let errorViewController
            = UIStoryboard(name: "Error", bundle: nil).instantiateViewController(
                withIdentifier: ErrorViewController.identidier
            ) as! ErrorViewController

        errorViewController.view.backgroundColor = .red

        // set a reloadHandler closure that gets called
        // whenever the reload button is tapped
        errorViewController.reloadHandler = { [weak self] in
            self?.loadItems()
        }

        add(errorViewController)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
