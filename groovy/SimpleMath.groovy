class SimpleMath {
	def static fibonacci(n) { n }

	def static powerOf2(n)	{ 2.power(n) }
}


class SimpleMathTest {
	def static main(String[] args) {
		println SimpleMath.powerOf2(5)
	}
}

def simple_test() {
	println "Test of fibonacci"
	println SimpleMath.fibonacci(5)
}
