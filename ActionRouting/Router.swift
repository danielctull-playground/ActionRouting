
import Foundation

protocol Router {
	func route(action: Action) -> Bool
}
