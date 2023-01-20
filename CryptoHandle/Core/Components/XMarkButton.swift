//
//  XMarkButton.swift
//  CryptoHandle
//
//  Created by Noé VERNIER on 19/01/2023.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark.circle.fill")
                .font(.headline)
                .foregroundColor(Color.theme.secondaryText)
                .symbolRenderingMode(.hierarchical)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
