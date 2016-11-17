
import UIKit

extension UITabBarController {

	override open func show(child viewController: UIViewController) {
		super.show(child: viewController)
		self.selectedViewController = viewController
	}

	// Provide the selected view controller first.
	override var routingChildViewControllers: [UIViewController] {

		guard let selectedViewController = selectedViewController else {
			return childViewControllers
		}

		let others = childViewControllers.filter { $0 != selectedViewController }
		var viewControllers = [selectedViewController]
		viewControllers.append(contentsOf: others)
		return viewControllers
	}
}
