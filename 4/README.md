In order to use this example you need to create a database with the filename
`cites.sqlite`. 

At the terminal, run the following command

`cat cities.sql | sqlite3 cities.sqlite`

Note it's a good idea to do something similar for your project. Don't commit sqlite files to the repository as they're binary files. You could set the database up in this way by using Rake.
