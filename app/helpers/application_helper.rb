module ApplicationHelper
	def active?(path)
		current_page?(path) ? 'active' : nil
	end
end
