## Practice Ruby on Rails with mongoDB
0. Create a new rails app;
    - rails new demo

1. Install mongoDB using gem 
    - write below in gemfile<br> 
        #To MongoDB<br>
        gem 'mongo'<br>
        gem 'mongoid'
    - run "bundle install" in Terminal

2. Configure your app to support mongoDB
    - write below in Terminal<br>
        rails g mongoid:config
    - then you can see file named config/mongoid.yml

3. Create a new model with attributes.
    - wrtie below in Terminal<br>
        rails g scaffold idol name:String age:Integer

4. Run the server and insert the values.
    - But four step do not work if you use C9 workspace
        - you can solve that, use this <a href="https://community.c9.io/t/setting-up-mongodb/1717">link</a>
    - Run mongoDB always ./mongod

5. Check the database for the inserted values.
    - write 'mongo' in terminal <br>
    show dbs;<br>
    use idol_development; ('use workspace_development;' if c9.io)<br>
    show collections;<br>
    db.idols.find()

6. I refer to the following <a href="https://www.youtube.com/watch?v=5YbaYSWFhbY">link</a>

---

### Practice add new field and set 1:m relationship

1. Add test column
    - edit some file
        - idol.rb
        - idols_controller.rb
        - _form.html.erb
        - show.html.erb
    - **Fail to add date field in mongoid...**
        - may be you can solve using that <a href="https://gist.github.com/k-rudy/7580106">link</a>
    - set necessary name field
        - validates_presence_of :name

2. Add new model comment
    - Wrtie "rails g model comment name:string content:text" in terminal
    - Set model relationship 1:M = idol:comments 
        - Edit file
            - idol.rb
            - comment.rb
            - routes.rb
    - Write "rails g controller comments"
        - Edit file
            - comments_controller.rb
            - show.html.erb
    - Confirm input comments
        - After input comment in show page then, write 'Comment.count', 'Idol.first.comments.count' in rails console to check data count
            - you can enter the rails console by writting 'rails c' in terminal

- modify
idols.rb
show.html.erb
routes.rb
- create 
comments_controller.rb
comment.rb