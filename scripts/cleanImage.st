IceRepository registry asSet do: [ :r | r forget ].

Metacello registrations do: [ :pr |
		pr repositoryDescriptions do: [ :rd |
				((rd beginsWith: 'tonel:') or: [rd beginsWith: 'filetree:'])
					ifTrue: [  pr unregisterProject ]
		]
].
