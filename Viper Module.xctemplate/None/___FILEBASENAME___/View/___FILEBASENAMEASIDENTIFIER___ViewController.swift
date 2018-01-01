//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ___VARIABLE_productName:identifier___ViewInput {
    
    var output: ___VARIABLE_productName:identifier___ViewOutput!

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    // MARK: - ___VARIABLE_productName:identifier___ViewInput

    func setupInitialState() {
        
    }
}