//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: BaseModuleLoader {
    
    lazy var storyboardsFactory: StoryboardsFactory = StoryboardsFactoryImplementation()

    // MARK: - BaseModuleConfigurator

    override func configureModule(for view: UIViewController) {

        let viewController = view as! ___VARIABLE_productName:identifier___ViewController

        let router = ___VARIABLE_productName:identifier___Router()
        router.presentationView = view

        let presenter = ___VARIABLE_productName:identifier___Presenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ___VARIABLE_productName:identifier___Interactor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

    // MARK: - BaseModuleLoader

    override func loadModuleViewController() -> UIViewController {
        fatalError()
    }

}