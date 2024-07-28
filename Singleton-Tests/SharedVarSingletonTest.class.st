Class {
	#name : 'SharedVarSingletonTest',
	#superclass : 'TestCase',
	#category : 'Singleton-Tests',
	#package : 'Singleton-Tests'
}

{ #category : 'tests' }
SharedVarSingletonTest >> testSingleton [

	| sv1 sv2 oldCounter |
	sv1 := SVSubclass1 new.
	sv2 := SVSubclass2 new.

	oldCounter := sv1 counter.

	sv1 resetCounter.

	sv1
		addCounter;
		addCounter;
		addCounter.

	self assert: sv2 counter equals: 3.

	sv1 setCounter: oldCounter
]
