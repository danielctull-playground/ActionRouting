
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

		for viewController in childViewControllers {
			if viewController.route(action: action) {
				return true
			}
		}

		return false
	}
}
