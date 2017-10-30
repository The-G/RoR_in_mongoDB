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
 
5. Check the database for the inserted values.
    - write 'mongo' in terminal <br>
    show dbs;<br>
    use idol_development; ('use workspace_development;' if c9.io)<br>
    show collections;<br>
    db.idols.find()

10. I refer to the following <a href="https://www.youtube.com/watch?v=5YbaYSWFhbY">link</a>





