require "sinatra"

require_relative("lib/blog.rb")
require_relative("lib/post.rb")

blog = Blog.new

x = (60*60*24)
#one day

blog.add_post( Post.new("One", Time.now - (12*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Two", Time.now - (11*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Three", Time.now - (10*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Four", Time.now - (9*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Five", Time.now - (8*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Six", Time.now - (7*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Seven", Time.now - (6*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Eight", Time.now - (5*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Nine", Time.now - (4*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Ten", Time.now - (3*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Eleven", Time.now - (2*x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Twelve", Time.now - (x), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Thirteen", Time.now - (x/2), "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )
blog.add_post( Post.new("Fourteen", Time.now, "Ei pri illud facer liber, utinam delectus vel ut. Usu cu mutat errem eripuit, ludus utinam placerat sit an, in soluta doctus apeirian per. Nulla erant mel an, an pro alii legimus. Ad mei essent oblique meliore, no per vero patrioque. At sit libris possim, ei sea suas explicari similique, sit aeterno civibus vituperata cu.") )

# blog.add_post(post1)
# blog.add_post(post2)
# blog.add_post(post3)
# blog.add_post(post4)
# blog.add_post(post5)
# blog.add_post(post6)
# blog.add_post(post7)
# blog.add_post(post8)
# blog.add_post(post9)
# blog.add_post(post10)
# blog.add_post(post11)
# blog.add_post(post12)
# blog.add_post(post13)
# blog.add_post(post14)

get "/" do 
	@posts = blog.print_posts
	erb :home
end

get "/details/:index" do
	the_number = params[:index].to_i
	@posts_index = blog.print_posts[the_number]
	erb :details
end

get "/new_post" do
	erb :new_post
end

post "/submit_post" do
	new_post = Post.new(params[:title], Time.now, params[:text])
	blog.add_post(new_post)
	redirect to("/")
end
