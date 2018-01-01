//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___ViewOutput, ___VARIABLE_productName:identifier___InteractorOutput {

    weak var view: ___VARIABLE_productName:identifier___ViewInput!
    var interactor: ___VARIABLE_productName:identifier___InteractorInput!
    var router: ___VARIABLE_productName:identifier___RouterInput!
    
    // MARK: - ___VARIABLE_productName:identifier___ViewOutput
    
    func viewIsReady() {
        view.setupInitialState()
    }

    // MARK: - ___VARIABLE_productName:identifier___InteractorOutput

    
}