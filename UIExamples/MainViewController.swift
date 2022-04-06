//
//  MainViewController.swift
//  UIExamples
//
//  Created by Gabriel Patane Todaro on 06/04/22.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action
    @IBAction func didTapXibButton(sender: UIButton) {
        let controller = Concept2ViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func didTapViewCodeButton(sender: UIButton) {
        let controller = Concept3ViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func didTapSwiftUIButton(sender: UIButton) {
        let swiftuiView = Concept4ViewController()
        let hosting = UIHostingController(rootView: swiftuiView)
        navigationController?.pushViewController(hosting, animated: true)
    }
}
