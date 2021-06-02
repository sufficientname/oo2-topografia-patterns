Class {
	#name : #Topography,
	#superclass : #Object,
	#category : #'TP3-3-Topografia'
}

{ #category : #testing }
Topography >> isEqualTo: aTopography [
	self subclassResponsibility
]

{ #category : #testing }
Topography >> isLandTopography [
	^ false
]

{ #category : #testing }
Topography >> isMixedTopography [
	^ false
]

{ #category : #testing }
Topography >> isWaterTopography [
	^ false
]

{ #category : #accessing }
Topography >> landRatio [
	self subclassResponsibility 
]

{ #category : #accessing }
Topography >> waterRatio [
	self subclassResponsibility 
]
