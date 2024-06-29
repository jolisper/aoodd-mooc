Class {
	#name : 'MySumParametrizedTest',
	#superclass : 'ParametrizedTestCase',
	#instVars : [
		'number1',
		'number2',
		'result'
	],
	#category : 'ParametrizedTests',
	#package : 'ParametrizedTests'
}

{ #category : 'building suites' }
MySumParametrizedTest class >> testParameters [ 
	^ ParametrizedTestMatrix new
	addCase: { #number1 -> 2 . #number2 -> 1.0 . #result -> 3 };
	addCase: { #number1 -> (2/3) . #number2 -> (1/3) . #result -> 1 };
	yourself 
]

{ #category : 'accessing' }
MySumParametrizedTest >> number1: anInteger [ 
	number1 := anInteger
]

{ #category : 'accessing' }
MySumParametrizedTest >> number2: aNumber [ 
	number2 := aNumber
]

{ #category : 'accessing' }
MySumParametrizedTest >> result: anInteger [ 
	result := anInteger
]

{ #category : 'tests' }
MySumParametrizedTest >> testSum [
	"We extend our test calls from ParametrizedTestCase and replace the constanst 
	of the test with instance variables. The values of the variables are defined in
	the class side method testParameter."

	self assert: number1 + number2 equals: result
]
