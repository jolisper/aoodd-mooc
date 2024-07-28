Class {
	#name : 'ClassVarSingletonTest',
	#superclass : 'TestCase',
	#category : 'Singleton-Tests',
	#package : 'Singleton-Tests'
}

{ #category : 'tests' }
ClassVarSingletonTest >> testSingleton [

	| cv1 cv2 oldCv1 oldCv2 |
	cv1 := CVSubclass1 new.
	cv2 := CVSubclass2 new.

	oldCv1 := cv1 counter.
	oldCv2 := cv2 counter.

	cv1 resetCounter.
	cv2 resetCounter.

	cv1
		addCounter;
		addCounter;
		addCounter.

	cv2 addCounter.

	self assert: cv1 counter equals: 3.
	self assert: cv2 counter equals: 1.

	cv1 setCounter: oldCv1.
	cv2 setCounter: oldCv2
]
