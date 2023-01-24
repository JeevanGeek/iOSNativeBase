//
//  NBButton.swift
//  iOSNativeBaseFramework
//
//  Created by Jeevan Chandra Joshi on 20/01/23.
//

import UIKit

open class NBButton: UIButton {
    private lazy var buttonText = text
    private var activityIndicator: UIActivityIndicatorView!

    private var buttonCornerRadius: CGFloat {
        frame.width / 4
    }

    public var text: String? {
        didSet {
            buttonText = text
            if !isLoading {
                setTitle(buttonText, for: .normal)
            }
        }
    }

    public var variant: String? {
        didSet {
            switch variant {
            case "solid":
                setTitleColor(frontColor, for: .normal)
                backgroundColor = backColor
            case "subtle":
                setTitleColor(backColor, for: .normal)
                backgroundColor = backColor?.withAlphaComponent(0.2)
            case "outline":
                setTitleColor(backColor, for: .normal)
                backgroundColor = .clear
                layer.borderWidth = 1
                layer.borderColor = backColor?.cgColor
            case "plain":
                setTitleColor(backColor, for: .normal)
                backgroundColor = .clear
                layer.borderWidth = 0
            default: print(variant)
            }
        }
    }

    public var size: String? {
        didSet {
            switch size {
            case "S":
                frame = CGRect(x: frame.minX, y: frame.minY, width: 100, height: 50)
            case "M":
                frame = CGRect(x: frame.minX, y: frame.minY, width: 120, height: 60)
            case "L":
                frame = CGRect(x: frame.minX, y: frame.minY, width: 140, height: 70)
            default: print(size)
            }
        }
    }

    public var frontColor: UIColor? {
        didSet {
            setTitleColor(frontColor, for: .normal)
        }
    }

    public var backColor: UIColor? {
        didSet {
            if isActive {
                backgroundColor = backColor
            } else {
                backgroundColor = .systemGray
            }
        }
    }

    public var isActive: Bool = true {
        didSet {
            isEnabled = isActive
            if isActive {
                backgroundColor = backColor
            } else {
                backgroundColor = .systemGray
            }
        }
    }

    public var isLoading: Bool = false {
        didSet {
            if isLoading {
                showLoading()
            } else {
                hideLoading()
            }
        }
    }

    public func showAlert(_ self: UIViewController) {
        if !isLoading {
            let alert = UIAlertController(title: "Alert", message: "You Clicked Me", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        layer.cornerRadius = buttonCornerRadius
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 100),
            heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    private func showLoading() {
        buttonText = titleLabel?.text
        setTitle("", for: .normal)
        if activityIndicator == nil {
            activityIndicator = UIActivityIndicatorView()
            activityIndicator.color = .white
        }
        addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        activityIndicator.startAnimating()
    }

    private func hideLoading() {
        setTitle(buttonText, for: .normal)
        activityIndicator.stopAnimating()
    }
}
