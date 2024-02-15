//
//  UIView+Extensions.swift
//  SwiftProject
//
//  Created by Priyank Gandhi on 11/02/24.
//

import Foundation
import SwiftUI

extension UIView {
    private struct ViewPreview: UIViewRepresentable {
        typealias UIViewType = UIView
        let view: UIView
        func makeUIView(context: Context) -> UIView {
            return view
        }
        
        func updateUIView(_ uiView: UIView, context: Context) {
            
        }
    }
    
    func showLivePreview() -> some View {
        ViewPreview(view: self)
    }
}
