//
//  HTMLFormattedText.swift
//  HTMLFormattedText
//
//  Created by BS-272 on 12/7/21.
//

import UIKit
import SwiftUI

struct HTMLFormattedText: UIViewRepresentable {
    
    let text: String
    private  let textView = UITextView()
    
    init(_ content: String) {
        self.text = content
    }
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UITextView {
        textView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textView.isSelectable = false
        textView.isUserInteractionEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<Self>) {
        DispatchQueue.main.async {
            if let attributeText = self.converHTML(text: text) {
                textView.attributedText = attributeText
            } else {
                textView.text = ""
            }
    
        }
    }
    
    private func converHTML(text: String) -> NSAttributedString? {
        guard let data = text.data(using: .utf8) else {
            return nil
        }
        
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            return attributedString
        } else{
            return nil
        }
    }
    
}
