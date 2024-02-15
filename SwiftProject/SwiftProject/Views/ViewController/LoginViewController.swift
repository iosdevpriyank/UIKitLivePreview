//
//  LoginViewController.swift
//  SwiftProject
//
//  Created by Priyank Gandhi on 11/02/24.
//

import UIKit
import SwiftUI

class LoginViewController: UIViewController {
    
    lazy var headerView: HeaderView = {
        let headerView = HeaderView()
        return headerView
    }()

    lazy var txtFldUserName: UITextField = {
        let txtFld = UITextField()
        txtFld.borderStyle = .roundedRect
        txtFld.placeholder = "Enter a Username"
        return txtFld
    }()
    
    lazy var txtFldPassword: UITextField = {
        let txtFld = UITextField()
        txtFld.borderStyle = .roundedRect
        txtFld.placeholder = "Enter a Password"
        txtFld.isSecureTextEntry = true
        return txtFld
    }()
    
    lazy var btnLogin: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .lightGray
        btn.setTitle("Login", for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupUI()
    }
    
    private func setupUI() {
        self.view.addSubview(headerView)
        self.view.addSubview(txtFldUserName)
        self.view.addSubview(txtFldPassword)
        self.view.addSubview(btnLogin)
        
        headerView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(64.0)
            make.left.equalToSuperview().offset(16.0)
            make.right.equalToSuperview().offset(-16.0)
            make.height.equalTo(120.0)
        }
        
        txtFldUserName.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(40.0)
            make.left.equalTo(16.0)
            make.right.equalTo(-16.0)
            make.height.equalTo(44.0)
        }
        
        txtFldPassword.snp.makeConstraints { make in
            make.top.equalTo(txtFldUserName.snp.bottom).offset(20.0)
            make.left.equalTo(16.0)
            make.right.equalTo(-16.0)
            make.height.equalTo(44.0)
        }
        
        btnLogin.snp.makeConstraints { make in
            make.top.equalTo(txtFldPassword.snp.bottom).offset(20.0)
            make.left.equalTo(16.0)
            make.right.equalTo(-16.0)
            make.height.equalTo(44.0)
        }
    }

    

}


#Preview {
    LoginViewController().showLivePreview()
}
 
