//
//  ViewController.swift
//  TestApp
//
//  Created by Anton Vlezko on 14.06.2022.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        showProgress()
    }

    func showProgress() {
        let progressService = ProgressService(viewController: self)

        sleep(3)
        progressService.showProgress()
        debugPrint("Show progress")
    }
}

