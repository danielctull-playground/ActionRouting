
import UIKit

extension UINavigationController {

	override open func show(child viewController: UIViewController) {
		super.show(child: viewController)
		popToViewController(viewController, animated: false)
	}
}
