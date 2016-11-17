
import UIKit

extension UIViewController {

	open func show(child viewController: UIViewController) {
		show()
	}

	public func show() {
		self.parent?.show(child: self)
	}
}

extension UIViewController: Router {

	func route(action: Action) -> Bool {

		if let performer = self as? Performer, performer.canPerform(action: action) {
			show()
			return performer.perform(action: action)
		}

		// Traverse up the presented view controller first because
		// this will be the front-most view controller. Dismiss it
		// if it cannot route the action.
		if let presentedViewController = presentedViewController {
			if presentedViewController.route(action: action) {
				return true
			} else {
				dismissPresentedViewController()
			}
		}

		// Go through all the child view controllers.
		for viewController in childViewControllers {
			if viewController.route(action: action) {
				return true
			}
		}

		return false
	}
}
