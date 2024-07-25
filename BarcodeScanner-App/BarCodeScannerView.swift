//
//  ContentView.swift
//  BarcodeScanner-App
//
//  Created by Himanshu Kesharwani on 25/07/24.
//

import SwiftUI

struct BarCodeScannerView: View {
    @State private var scannedCode: String
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode,
                            alertItem: $alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 80)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                
                
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

//#Preview {
//    BarCodeScannerView(scannedCode: .contains("1") )
//}
