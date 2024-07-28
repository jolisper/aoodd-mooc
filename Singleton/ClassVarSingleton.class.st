Class {
	#name : 'ClassVarSingleton',
	#superclass : 'Object',
	#classInstVars : [
		'counter'
	],
	#category : 'Singleton',
	#package : 'Singleton'
}

{ #category : 'adding' }
ClassVarSingleton class >> addCounter [

	counter ifNil: [ counter := 0 ].
	counter := counter + 1
]

{ #category : 'accessing' }
ClassVarSingleton class >> counter [

	^ counter
]

{ #category : 'initialization' }
ClassVarSingleton class >> resetCounter [

	counter := 0
]

{ #category : 'initialization' }
ClassVarSingleton class >> setCounter: anInteger [

	counter := anInteger
]

{ #category : 'accessing' }
ClassVarSingleton class >> subclassInstance [

	^ counter
]

{ #category : 'adding' }
ClassVarSingleton >> addCounter [

	self class addCounter.
]

{ #category : 'accessing' }
ClassVarSingleton >> counter [

	^ self class subclassInstance 
]

{ #category : 'initialization' }
ClassVarSingleton >> resetCounter [
	self class resetCounter
]

{ #category : 'initialization' }
ClassVarSingleton >> setCounter: anInteger [ 
	self class setCounter: anInteger
]
