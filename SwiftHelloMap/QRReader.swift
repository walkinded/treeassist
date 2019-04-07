//
//  QRReader.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 06.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit
import AVFoundation
class QRReader: UIViewController, AVCaptureMetadataOutputObjectsDelegate {

    @IBOutlet weak var videoPreview: UIView!
    
    var stringURL = String()
    
    enum error: Error {
        case noCameraAvailable
        case videoInputInitFail
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            
        }catch{
            print("Failed to scan")
        }

        // Do any additional setup after loading the view.
    }
    
    func captureOutout(_ captureOutout: AVCaptureOutput!, didOutputMetadataObjects metadataObjects:[Any]!, from connection: AVCaptureConnection!){
        if metadataObjects.count > 0{
            let machineReadableCode = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
            if machineReadableCode.type == AVMetadataObject.ObjectType.qr {
                stringURL = machineReadableCode.stringValue!
                performSegue(withIdentifier: "openLink", sender: self)
            }
        }
    }
    
    func scanQRCode() throws{
        let vaCaptureSession = AVCaptureSession()
        
        guard let avCaptureDevice = AVCaptureDevice.default(for: AVMediaType.video) else {
            print("No camera")
            throw error.noCameraAvailable
        }
        guard let avCaptureInput = try? AVCaptureDeviceInput(device: avCaptureDevice) else {
            print("Failed to init camera.")
            throw error.videoInputInitFail
        }
        
        let avCaptureMetadataOutput = AVCaptureMetadataOutput()
        avCaptureMetadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        
        vaCaptureSession.addInput(avCaptureInput)
        vaCaptureSession.addOutput(avCaptureMetadataOutput)
        
        avCaptureMetadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
        
        let avCaptureVideoPreviewLayer = AVCaptureVideoPreviewLayer(session: vaCaptureSession)
        avCaptureVideoPreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        avCaptureVideoPreviewLayer.frame = videoPreview.bounds
        self.videoPreview.layer.addSublayer(avCaptureVideoPreviewLayer)
        
        vaCaptureSession.stopRunning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openLink"{
            let destination = segue.destination as! WebViewController
            destination.url = URL(string: stringURL)
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
