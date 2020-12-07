class PagesController < ApplicationController
  def about
    @heading = 'Страничка про нас'
    @text = 'Просто текст'
  end
end
