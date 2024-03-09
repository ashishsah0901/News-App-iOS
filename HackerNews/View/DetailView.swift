//
//  DetailView.swift
//  HackerNews
//
//  Created by Ashish Sah on 06/01/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
