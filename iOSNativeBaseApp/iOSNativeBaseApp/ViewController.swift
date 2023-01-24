//
//  ViewController.swift
//  iOSNativeBaseApp
//
//  Created by Jeevan Chandra Joshi on 20/01/23.
//

import iOSNativeBaseFramework
import UIKit

class ViewController: UIViewController {
    let colors = [UIColor.systemCyan, UIColor.systemRed, UIColor.systemBlue, UIColor.systemGray, UIColor.systemMint, UIColor.systemPink, UIColor.systemTeal, UIColor.systemBrown, UIColor.systemGreen, UIColor.systemIndigo, UIColor.systemOrange, UIColor.systemPurple, UIColor.systemYellow]
    var selectedColor = 0

    let variants = ["solid", "subtle", "outline", "plain"]
    var selectedVariant = 0

    let sizes = ["S", "M", "L"]

    let buttonView = UIView()
    let controlView = UIView()

    lazy var button: NBButton = {
        let button = NBButton(frame: CGRect(x: 200, y: 200, width: 100, height: 50))
        button.center.x = view.center.x
        button.center.y = view.center.y / 2
        button.text = "Click Me"
        button.frontColor = .label
        button.backColor = colors[selectedColor]
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var enableLabel: UILabel = {
        let label = UILabel()
        label.text = "Enabled:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var enableSwitch: UISwitch = {
        let enableSwitch = UISwitch()
        enableSwitch.isOn = true
        enableSwitch.addTarget(self, action: #selector(onEnableSwitchValueChanged), for: .valueChanged)
        enableSwitch.translatesAutoresizingMaskIntoConstraints = false
        return enableSwitch
    }()

    lazy var enabledStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(enableLabel)
        stackView.addArrangedSubview(enableSwitch)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var sizeLabel: UILabel = {
        let label = UILabel()
        label.text = "Size:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var sizePicker: UISegmentedControl = {
        let sizePicker = UISegmentedControl(items: sizes)
        sizePicker.addTarget(self, action: #selector(onSizePickerValueChanged), for: .valueChanged)
        sizePicker.translatesAutoresizingMaskIntoConstraints = false
        return sizePicker
    }()

    lazy var sizeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(sizeLabel)
        stackView.addArrangedSubview(sizePicker)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Text:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.text = "Click Me"
        textField.borderStyle = .roundedRect
        textField.addTarget(self, action: #selector(onTextFieldValueChanged), for: .editingChanged)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    lazy var textStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(textField)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var variantLabel: UILabel = {
        let label = UILabel()
        label.text = "Variant:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var leftVariantPicker: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left.circle"), for: .normal)
        button.addTarget(self, action: #selector(onLeftVariantPickerValueChanged), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var variantPickerText: UILabel = {
        let label = UILabel()
        label.text = variants[selectedVariant]
        label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()

    lazy var rightVariantPicker: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right.circle"), for: .normal)
        button.addTarget(self, action: #selector(onRightVariantPickerValueChanged), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var variantPickerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(leftVariantPicker)
        stackView.addArrangedSubview(variantPickerText)
        stackView.addArrangedSubview(rightVariantPicker)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var variantStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(variantLabel)
        stackView.addArrangedSubview(variantPickerStackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var loadingLabel: UILabel = {
        let label = UILabel()
        label.text = "Loading:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var loadingSwitch: UISwitch = {
        let enableSwitch = UISwitch()
        enableSwitch.isOn = false
        enableSwitch.addTarget(self, action: #selector(onLoadingSwitchValueChanged), for: .valueChanged)
        enableSwitch.translatesAutoresizingMaskIntoConstraints = false
        return enableSwitch
    }()

    lazy var loadingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(loadingLabel)
        stackView.addArrangedSubview(loadingSwitch)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var colorLabel: UILabel = {
        let label = UILabel()
        label.text = "Color:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var leftColorPicker: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left.circle"), for: .normal)
        button.addTarget(self, action: #selector(onLeftColorPickerValueChanged), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var colorPickerText: UILabel = {
        let label = UILabel()
        label.text = colors[selectedColor].accessibilityName
        label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()

    lazy var rightColorPicker: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right.circle"), for: .normal)
        button.addTarget(self, action: #selector(onRightColorPickerValueChanged), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var colorPickerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(leftColorPicker)
        stackView.addArrangedSubview(colorPickerText)
        stackView.addArrangedSubview(rightColorPicker)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var colorStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(colorLabel)
        stackView.addArrangedSubview(colorPickerStackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
        setupConstraint()
    }

    func setupUi() {
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(buttonView)
        view.addSubview(controlView)

        buttonView.backgroundColor = .systemBackground
        buttonView.addSubview(button)

        controlView.backgroundColor = .systemBackground
        controlView.addSubview(enabledStackView)
        controlView.addSubview(sizeStackView)
        controlView.addSubview(textStackView)
        controlView.addSubview(variantStackView)
        controlView.addSubview(loadingStackView)
        controlView.addSubview(colorStackView)
    }

    func setupConstraint() {
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        controlView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonView.topAnchor.constraint(equalTo: view.topAnchor),
            buttonView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buttonView.bottomAnchor.constraint(equalTo: view.centerYAnchor),

//            button.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: buttonView.centerYAnchor),

            controlView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 25),
            controlView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            controlView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            controlView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),

            enabledStackView.topAnchor.constraint(equalTo: controlView.topAnchor, constant: 20),
            enabledStackView.leadingAnchor.constraint(equalTo: controlView.leadingAnchor, constant: 20),
            enabledStackView.trailingAnchor.constraint(equalTo: controlView.trailingAnchor, constant: -20),

            sizeStackView.topAnchor.constraint(equalTo: enabledStackView.bottomAnchor, constant: 20),
            sizeStackView.leadingAnchor.constraint(equalTo: controlView.leadingAnchor, constant: 20),
            sizeStackView.trailingAnchor.constraint(equalTo: controlView.trailingAnchor, constant: -20),

            textStackView.topAnchor.constraint(equalTo: sizeStackView.bottomAnchor, constant: 20),
            textStackView.leadingAnchor.constraint(equalTo: controlView.leadingAnchor, constant: 20),
            textStackView.trailingAnchor.constraint(equalTo: controlView.trailingAnchor, constant: -20),

            variantStackView.topAnchor.constraint(equalTo: textStackView.bottomAnchor, constant: 20),
            variantStackView.leadingAnchor.constraint(equalTo: controlView.leadingAnchor, constant: 20),
            variantStackView.trailingAnchor.constraint(equalTo: controlView.trailingAnchor, constant: -20),

            loadingStackView.topAnchor.constraint(equalTo: variantStackView.bottomAnchor, constant: 20),
            loadingStackView.leadingAnchor.constraint(equalTo: controlView.leadingAnchor, constant: 20),
            loadingStackView.trailingAnchor.constraint(equalTo: controlView.trailingAnchor, constant: -20),

            colorStackView.topAnchor.constraint(equalTo: loadingStackView.bottomAnchor, constant: 20),
            colorStackView.leadingAnchor.constraint(equalTo: controlView.leadingAnchor, constant: 20),
            colorStackView.trailingAnchor.constraint(equalTo: controlView.trailingAnchor, constant: -20),

        ])
    }
}

extension ViewController {
    @objc func buttonPressed(_ sender: UIButton) {
        button.showAlert(self)
    }

    @objc func onEnableSwitchValueChanged(_ sender: UISwitch) {
        button.isActive = sender.isOn
    }

    @objc func onSizePickerValueChanged(_ sender: UISegmentedControl) {
        button.size = sizes[sender.selectedSegmentIndex]
    }

    @objc func onTextFieldValueChanged(_ sender: UITextField) {
        button.text = sender.text
    }

    @objc func onLeftVariantPickerValueChanged(_ sender: UIButton) {
        selectedVariant = abs(selectedVariant - 1) % variants.count
        button.variant = variants[selectedVariant]
        variantPickerText.text = variants[selectedVariant]
    }

    @objc func onRightVariantPickerValueChanged(_ sender: UIButton) {
        selectedVariant = abs(selectedVariant + 1) % variants.count
        button.variant = variants[selectedVariant]
        variantPickerText.text = variants[selectedVariant]
    }

    @objc func onLoadingSwitchValueChanged(_ sender: UISwitch) {
        button.isLoading = sender.isOn
    }

    @objc func onLeftColorPickerValueChanged(_ sender: UIButton) {
        selectedColor = abs(selectedColor - 1) % colors.count
        button.backColor = colors[selectedColor]
        colorPickerText.text = colors[selectedColor].accessibilityName
    }

    @objc func onRightColorPickerValueChanged(_ sender: UIButton) {
        selectedColor = abs(selectedColor + 1) % colors.count
        button.backColor = colors[selectedColor]
        colorPickerText.text = colors[selectedColor].accessibilityName
    }
}
