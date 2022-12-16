//
//  ViewController.swift
//  Snapkit
//
//  Created by Mert on 16.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AllConstraints()
    }
    
    func AllConstraints() {
        self.view.addSubview(snapView)
        snapView.snp.makeConstraints { (make) in
        make.centerX.equalToSuperview() //1
        make.centerY.equalToSuperview() //2
        make.left.equalToSuperview().offset(50) //3
        make.right.equalToSuperview().offset(-50) //4
        make.height.equalTo(300) //5
        }
        self.snapView.addSubview(snapLabel)
        snapLabel.snp.makeConstraints { (make) in
        make.top.equalToSuperview().offset(20) //1
        make.centerX.equalToSuperview() //2
        }
        self.snapView.addSubview(snapBtn)
        snapBtn.snp.makeConstraints { (make) in
        make.bottom.equalToSuperview().offset(-20)
        make.left.equalToSuperview().offset(30)
        make.right.equalToSuperview().offset(-30)
        make.height.equalTo(60)
        }
        self.snapView.addSubview(snapDescription)
        snapDescription.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
        }
    }

    lazy var snapView: UIView = {
    let view = UIView()
    view.layer.cornerRadius = 20
    view.backgroundColor = .purple
    view.layer.opacity = 0.7
    return view
    }()
    lazy var snapLabel: UILabel = {
    let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 22)
        label.text = "Exploring SnapKit"
    label.textColor = .white
    return label
    }()
    lazy var snapBtn: UIButton = {
    let button = UIButton()
    button.backgroundColor = .lightGray
    button.setTitle("Try out SnapKit!", for: .normal)
    button.setTitleColor(.purple, for: .normal)
    button.layer.cornerRadius = 20
    return button
    }()
    lazy var snapDescription : UILabel = {
        let description = UILabel()
        description.font = UIFont(name: "HelveticaNeue-Medium", size: 18)
        description.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nunc leo, gravida finibus magna sit amet, dignissim placerat eros. Cras justo lacus, hendrerit eget mauris."
        description.numberOfLines = 0
        return description
    }()
}

