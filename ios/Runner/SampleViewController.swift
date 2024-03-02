//
//  SampleViewController.swift
//  Runner
//
//  Created by Akihiro Nakano on 2024/03/02.
//

import UIKit
import Nativebrik

let env = try! LoadEnv()
let nativebrik = {
    return NativebrikClient(projectId: env.value("PROJECT_ID_NATIVEBRIK")!)
}()

class SampleViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        let uiview = nativebrik
            .experiment
//            .embeddingUIView("TOP_COMPONENT")
            .embeddingUIView("TEST_1")
        uiview.frame = CGRect(x: 20, y: 635, width: UIScreen.main.bounds.width - 40, height: 65)
        self.view.addSubview(uiview)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let overlay = nativebrik.overlayViewController()
        self.addChild(overlay)
        self.view.addSubview(overlay.view)
    }
    
    @IBAction func onClickedButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
