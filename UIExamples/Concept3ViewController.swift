//
//  Concept3ViewController.swift
//  UIExamples
//
//  Created by Gabriel Patane Todaro on 06/04/22.
//

import UIKit

/// View Controller on View Code
class Concept3ViewController: UIViewController {
    
    // MARK: - Views
    lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "swift")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var swift: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Swift is awesome!"
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    lazy var swiftDesc: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "First released in 2014, Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community."
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        customViewInit()
        
        title = "View Code"
    }
    
    private func customViewInit() {
        view.backgroundColor = .white
        
        view.addSubview(image)
        view.addSubview(swift)
        view.addSubview(swiftDesc)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        swift.translatesAutoresizingMaskIntoConstraints = false
        swiftDesc.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.topAnchor),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 300),
            swift.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            swift.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            swift.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            swiftDesc.topAnchor.constraint(equalTo: swift.bottomAnchor, constant: 16),
            swiftDesc.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            swiftDesc.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
}
