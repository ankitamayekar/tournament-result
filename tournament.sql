-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--drop db if already exists
  DROP DATABASE IF EXISTS tournament;

--create db tournament
  create database tournament;
  
-- connect to the database tournament
  \c tournament;
  
-- creat player table
  create table player(
  id serial primary key,
  name text
  );

-- create match table
  create table match(
  id serial primary key,
  winner int references player(id),
  loser int references player(id)
  );

-- Create a view that tallies total matches per player
  create or replace view total_match_view 
  as select player.id,
  count(match.id) as total_match from player 
  left join match 
  on player.id = match.winner
  or player.id = match.loser
  group by player.id;

