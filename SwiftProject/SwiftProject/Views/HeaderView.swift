//
//  HeaderView.swift
//  SwiftProject
//
//  Created by Priyank Gandhi on 11/02/24.
//

import UIKit
import SwiftUI
import SnapKit

class HeaderView: UIView {
   
    lazy var lblCompanyName: UILabel  = {
        let lbl = UILabel()
        lbl.text = "Company Name"
        lbl.font = .systemFont(ofSize: 20.0, weight: .bold)
        return lbl
    }()
    
    lazy var imgVwCompanyLogo: UIImageView = {
        let imgVw = UIImageView()
        imgVw.snp.makeConstraints { make in
            make.width.equalTo(80.0)
            make.height.equalTo(80.0)
                }
        imgVw.backgroundColor = .blue.withAlphaComponent(0.8)
        imgVw.layer.cornerRadius = 40.0
        imgVw.layer.borderWidth = 2.0
        imgVw.layer.borderColor = UIColor.black.cgColor
        return imgVw
    }()
   
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(lblCompanyName)
        addSubview(imgVwCompanyLogo)
        lblCompanyName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8.0)
            make.centerX.equalToSuperview()
        }
        
        
        imgVwCompanyLogo.snp.makeConstraints { make in
            make.top.equalTo(lblCompanyName.snp.bottom).offset(20.0)
            make.centerX.equalTo(lblCompanyName.snp.centerX)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#Preview {
    HeaderView().showLivePreview()
}
