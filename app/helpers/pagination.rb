module PaginationHelper
  def tag_or_gap_for(page)
    if page.left_outer? || page.right_outer? || page.inside_window?
      return page_tag page
    elsif !page.was_truncated?
      return gap_tag
    end
  end
end
