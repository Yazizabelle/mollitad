@propertyWrapper
struct MyProperty {
    var wrappedValue: Int
    var projectedValue: Binding<Int> {
        Binding(
            get: { wrappedValue },
            set: { wrappedValue = $0 }
        )
    }
}
