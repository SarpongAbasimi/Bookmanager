<h1 align='center'>
Bookmark Manager.
</h1>

<h4 align='center'>
User stories.
</h4>

``` 
As a User,
So that I can select from my favourite bookmarks,
I would like to see a list of my bookmarks.

> Second User Story.

As a User,
so that I can store my favourite bookmarks,
I would like to be able to add a bookmark.
```
<h4 align='center'>
Domain Model
</h4>


![Screenshot 2019-04-23 at 14 16 40](https://user-images.githubusercontent.com/44544977/56584109-f46f8e80-65d2-11e9-9e8a-1277510bf339.png)

<h4 align='center'>
Database Setup
</h4>

- Before you start.
- check if you have homebrew installed with ``brew - v``.
- If you have, go the the next step else copy and paste this in your terminal ``mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew ``.
- `` Brew install postgresql``.
- Wait for it it install.
- Then install brew services with ``brew services``.
- To start server type `` Brew services start postgresql``.
- Now type ``psql postgres`` to switch to posgres database.
- Type CREATE DATABASE ``bookmark_manager``.
- To switch or connect to ``bookmark_manager`` type `` \c  bookmark_manager``.
- bookmark_manager=# ``CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));`` 
- This will create a table in the bookmark_manager database with two columns ``id`` and ``url ``

|    id |   url  |
| :---: | :---: |


- The table will be ``empty`` for now.
- Execute SQL queries in order in db/migrations folder.
- This will create something like this


|    id     |   url            |
| :---:     |   :---:          |
| 1         | www.google.com   |
| 2         | www.youtube.com  |
| 3         | www.instagram.com|


<h4 align='center'>
Setting Up A Test Database
</h4>

- Type ``psql`` in terminal.

- Type ``CREATE DATABASE bookmark_manager_test`` to create a database.

- Type ``CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));``.

- Look inside ``./spec/setup_test_database`` & ``spec_helper`` to find out more.

