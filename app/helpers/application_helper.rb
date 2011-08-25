module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def markdown(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis]
    Redcarpet.new(text, *options).to_html.html_safe
  end
end
