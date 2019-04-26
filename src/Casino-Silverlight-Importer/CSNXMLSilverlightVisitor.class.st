Class {
	#name : #CSNXMLSilverlightVisitor,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'importer',
		'factory',
		'parentWidget'
	],
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #accessing }
CSNXMLSilverlightVisitor >> factory [
	^ factory
]

{ #category : #accessing }
CSNXMLSilverlightVisitor >> factory: anObject [
	factory := anObject
]

{ #category : #accessing }
CSNXMLSilverlightVisitor >> importer [
	^ importer
]

{ #category : #accessing }
CSNXMLSilverlightVisitor >> importer: anObject [
	importer := anObject
]

{ #category : #accessing }
CSNXMLSilverlightVisitor >> parentWidget [
	^ parentWidget 
]

{ #category : #accessing }
CSNXMLSilverlightVisitor >> parentWidget: aWidget [
	parentWidget := aWidget
]

{ #category : #visiting }
CSNXMLSilverlightVisitor >> shouldImportElement: anElement [
	^ anElement name ~= 'UserControl.Resources'
		and: [ (anElement name endsWith: 'Template') not ]
]

{ #category : #visiting }
CSNXMLSilverlightVisitor >> visitDocument: aDocument [
	self parentWidget: (self factory createPageFrom: aDocument).
	^  (aDocument nodes flatCollect: #nodes) do: [:aNode | aNode acceptNodeVisitor: self ]
]

{ #category : #visiting }
CSNXMLSilverlightVisitor >> visitElement: anElement [
	| widget |
	(self shouldImportElement: anElement)
		ifFalse: [ ^ self ].
	self parentWidget isContainer
		ifTrue: [ "A leaf cannot add a widget"
			widget := self factory createWidgetFrom: anElement.
			self parentWidget addWidget: widget.
			self factory createAttributesFor: widget from: anElement.
			widget checkAttributes.
			^ self clone parentWidget: widget; visitNodeWithElements: anElement ]
		ifFalse:
			[ "If a leaf have children nodes. They probably are attributes represented by a node
			ex: a tooltip for a button  "
			self parentWidget
				addAttribute: (self factory createAttributeFor: widget from: anElement).
			^ nil ]
]

{ #category : #visiting }
CSNXMLSilverlightVisitor >> visitNodeWithElements: aNodeWithElements [
	(aNodeWithElements hasChildren and: [ self parentWidget isContainer ])
		ifTrue:
			[ aNodeWithElements nodesDo: [ :each | each acceptNodeVisitor: self ] ].
	^ aNodeWithElements
]
