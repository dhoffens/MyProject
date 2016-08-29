require_relative("../lib/post.rb")

RSpec.describe Post do
	describe "initialize" do
		let (:post1) {Post.new("First", Date.today.prev_day(12), "First text")}
		it "initializes every post with title, date and text" do

			expect( post1.title ).to_not eq(nil)
			expect( post1.date ).to_not eq(nil)
			expect( post1.text ).to_not eq(nil)
			
		end
	end

	describe "date" do
		let (:post1) {Post.new("First", Date.today.prev_day(12), "First text")}
		it "shows the date the post was created" do

			expect( post1.date ).to_not eq(nil)

		end
	end

	describe "print" do
		let (:post1) {Post.new("First", Date.today.prev_day(12), "First text")}
		it "prints the title, date and text of the post." do

			expect( post1.print ).should include() 


end