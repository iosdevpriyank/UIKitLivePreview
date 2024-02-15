//
//  UIViewController+Extensions.swift
//  SwiftProject
//
//  Created by Priyank Gandhi on 11/02/24.
//

import Foundation
import SwiftUI

extension UIViewController {
    
    private struct ControllerPreview: UIViewControllerRepresentable {
        let viewcontroller: UIViewController
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewcontroller
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
        
    }
    
    func showLivePreview() -> some View {
        ControllerPreview(viewcontroller: self)
    }
    
}
