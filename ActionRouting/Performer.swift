
protocol Performer {
	func canPerform(_ action: Action) -> Bool
	func perform(_ action: Action)
}
