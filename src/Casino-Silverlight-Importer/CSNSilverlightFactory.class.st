Class {
	#name : #CSNSilverlightFactory,
	#superclass : #CSNWidgetFactory,
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createAttributeFor: aWidget from: anElement [
	^  self model
				silentlyAdd: (CSNAttribute silverCreateAttributeFor: aWidget from: anElement)
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createAttributesFor: widget from: anElement [
	anElement
		attributeNodesDo: [ :attribute | 
			self model
				silentlyAdd: (CSNAttribute silverCreateAttributeFor: widget from: attribute) ]
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createPageFrom: aDocumentXML [
	^ self model silentlyAdd: (CSNPage new name: ((aDocumentXML nodes anyOne attributeNodeAt: 'x:Class') value substrings: '.') last ; yourself)
]

{ #category : #'as yet unclassified' }
CSNSilverlightFactory >> createWidgetFrom: anElement [
	^ self model
		silentlyAdd:
			(CSNWidget silverCreateWidgetFrom: anElement)
]
