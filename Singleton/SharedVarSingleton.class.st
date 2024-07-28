Class {
	#name : 'SharedVarSingleton',
	#superclass : 'Object',
	#classVars : [
		'Counter'
	],
	#category : 'Singleton',
	#package : 'Singleton'
}

{ #category : 'adding' }
SharedVarSingleton >> addCounter [
	Counter ifNil: [ Counter := 0 ].
	Counter := Counter + 1.
	^ Counter 
]

{ #category : 'accessing' }
SharedVarSingleton >> counter [
	^ Counter 
]

{ #category : 'initialization' }
SharedVarSingleton >> resetCounter [
	Counter := 0
]

{ #category : 'initialization' }
SharedVarSingleton >> setCounter: anInteger [ 
	Counter := anInteger
]
