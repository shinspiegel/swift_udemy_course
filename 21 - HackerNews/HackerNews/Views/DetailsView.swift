//
//  NewItem.swift
//  HackerNews
//
//  Created by Shin on 21/03/21.
//  Copyright © 2021 Shin Spiegel. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct NewItem_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://google.com")
    }
}
