events
updateLastMessage: anEvent

	(self app chats getChat: (anEvent at: 'chat_id'))
		order: (anEvent at: 'order').

	self app chats
		reSort;
		triggerEvent: #chatsListChanged.