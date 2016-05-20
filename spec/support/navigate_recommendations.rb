module NavigateRecommendations
	def visit_recommendations_page
		visit("/recommendations")
	end
	def select_answer(answer)
		click_button(answer)
	end

	def i_should_see_this(thing_to_see)
		expect(page).to have_content(thing_to_see) 
	end

	def i_should_see_this_button(button_to_see)
		expect(page).to have_button(button_to_see)
	end

	def i_should_not_see_this_button(button_not_to_see)
		expect(page).not_to have_button(button_not_to_see)
	end
	def cookie_should_contain(expected_cookie_value)
		#pending
	end
end