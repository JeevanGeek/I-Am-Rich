//
//  ViewController.swift
//  I Am Rich Programmatic
//
//  Created by Jeevan Chandra Joshi on 05/01/23.
//

import UIKit

class ViewController: UIViewController {
    let labelView: UILabel = {
        let label = UILabel()
        label.text = "I Am Rich"
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let imageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "diamond"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubview()
        addConstraint()
    }

    func addSubview() {
        view.addSubview(labelView)
        view.addSubview(imageView)
    }

    func addConstraint() {
        NSLayoutConstraint.activate([
            labelView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            labelView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            labelView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),

            imageView.topAnchor.constraint(equalToSystemSpacingBelow: view.centerYAnchor, multiplier: 0.5),
            imageView.leadingAnchor.constraint(equalTo: labelView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: labelView.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 250),
            imageView.widthAnchor.constraint(equalToConstant: 250),
        ])
    }
}
