class PagesController < ApplicationController
  def index
    doc = Nokogiri::HTML(open('http://globoesporte.globo.com/').read)
    @teams = doc.search('div#1 .ativo a')
  end
end
