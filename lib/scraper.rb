require 'open-uri'
require 'pry'

class Scraper

   def self.scrape_index_page(index_url)
   index_data = []
    doc = Nokogiri::HTML(open(index_url))
     students = doc.css("div .student-card")

     students.each do |student|
     
       name = student.css("a .card-text-container .student-name").text
       location = student.css("a .card-text-container .student-location").text
       index_data << {:name => name, :location => location}
     end
     index_data
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

