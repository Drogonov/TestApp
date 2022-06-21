//
//  ProgressService.swift
//  TestApp
//
//  Created by Anton Vlezko on 16.06.2022.
//

import UIKit
import SnapKit

// MARK: - ProgressServiceProtocol

protocol ProgressServiceProtocol {
    func showProgress()
    func hideProgress()
}

// MARK: - ProgressService

final class ProgressService: ProgressServiceProtocol {

    // MARK: - Variables

    private lazy var spinner = LoaderViewController()
    private var viewController: UIViewController?

    // MARK: Construction

//    public init() {}

    init(
        viewController: UIViewController
    ) {
        self.viewController = viewController
    }

    // MARK: - Methods

    func showProgress() {
        viewController?.addChild(spinner)
        spinner.view.translatesAutoresizingMaskIntoConstraints = false
        viewController?.view.addSubview(spinner.view)
        spinner.spinner.startAnimation()

        spinner.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        spinner.didMove(toParent: viewController)
    }

    func hideProgress() {
        spinner.spinner.stopAnimation()
        spinner.willMove(toParent: nil)
        spinner.view.removeFromSuperview()
        spinner.removeFromParent()
    }
}
