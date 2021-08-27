//
//  WebView.swift
//  WebView
//
//  Created by Илья Проскурнев on 27.08.2021.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{

    var url: URL!    // optional, if absent, one of below search servers used
    private let webview = WKWebView()

    func makeUIView(context: Context) -> WKWebView {
        loadRequest(in: webview)
        return webview
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        loadRequest(in: uiView)
    }

    fileprivate func loadRequest(in webView: WKWebView) {
        webView.load(URLRequest(url: url))
    }

}
