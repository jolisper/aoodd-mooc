Class {
	#name : 'MySumTest',
	#superclass : 'TestCase',
	#category : 'ParametrizedTests',
	#package : 'ParametrizedTests'
}

{ #category : 'tests' }
MySumTest >> testSum [
	"We want to generalize this test case to cover more cases"
	self assert: 2 / 3 + (1 / 3) equals: 1
]

{ #category : 'tests' }
MySumTest >> testSumUsingACollection [

	"A basic solution is to use a collection, but
	What if I want to have another test reusing some of all these values?"
	{{ 2 . 1 . 3 } . { 2/3 . 1/3 . 1 }}
		do: [ :each |
			self assert: each first + each second equals: each third ]

]
