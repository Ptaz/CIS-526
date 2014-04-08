require 'test_helper'

class ClubTest < ActiveSupport::TestCase
	test "products attributes must not be empty" do
		club = Club.new
		assert club.invalid?
		assert club.errors[:title].any?
		assert club.errors[:description].any?
		assert club.errors[:image_url].any?
	end
	
	def new_club(image_url)
		Club.new(title: 	"My Club Title",
				description: "yyy",
				image_url: image_url)
	end
	test "image_url" do
		ok = %w{ ksu.gif ksu.jpg ksu.png KSU.JPG KSU.Jpg http://a.b.c/x/y/z/ksu.gif }
		bad = %w{ ksu.doc ksu.gif/more ksu.gif.more }
		ok.each do |name|
			assert new_club(name).valid?, "#{name} should be valid"
		end
		bad.each do |name|
			assert new_club(name).invalid?, "#{name} shouldn't be valid"
		end
	end
end
