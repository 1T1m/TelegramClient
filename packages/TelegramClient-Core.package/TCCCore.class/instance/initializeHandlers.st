initialization
initializeHandlers

	self
		authHandler: (TCCAuthHandler new
			app: self);
		chatsHandler: (TCCChatsHandler new
			app: self).