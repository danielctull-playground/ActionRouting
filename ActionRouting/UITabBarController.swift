
import UIKit

extension UITabBarController {

	override open func show(child viewController: UIViewController) {
		super.show(child: viewController)
		self.selectedViewController = viewController
	}
}
