module JournalsHelper

	def toggle_follow_button(journal, user)
		if current_user.flagged?(journal, :follow)
			link_to "Unfollow", follow_journal_path(journal)
		else
			link_to "Follow", follow_journal_path(journal)
		end
	end

end
