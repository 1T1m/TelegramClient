as yet unclassified
buildCreateChatButtonWith: aBuilder
^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Chat';
		action: #createChat;
		frame: (0@0.9 corner: 1@1);
		yourself