class MigrateBodytoRichBodyBlogs < ActiveRecord::Migration[6.0]
    def up
    Blog.find_each do |blog|
      blog.update(rich_body: blog.body)
    end
  end

  def down
    Blog.find_each do |blog|
      blog.update(body: blog.rich_body)
      blog.update(rich_body: nil)
    end
  end
end
