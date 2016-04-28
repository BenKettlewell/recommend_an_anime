module ManageSteps
	def visit_index_page
		visit("/animes")
	end
	def add_an_anime(anime_name: 'Tari Tari', mal_id: 13333, 
									 all_tags: 'school, sad, music')
		visit("/animes")
		click_link("New Anime")
		fill_in("Name", :with => anime_name)
		fill_in("Mal", :with => mal_id)
		fill_in("Tags", :with => all_tags)
		click_button("Create Anime")
	end

	def i_should_see_this(thing_to_see)
		expect(page).to have_content(thing_to_see) 
	end

end