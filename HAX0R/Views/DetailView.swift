//
//  DetailView.swift
//  HAX0R
//
//  Created by Виталий Усольцев on 06.05.2022.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.Google.com")
    }
}

