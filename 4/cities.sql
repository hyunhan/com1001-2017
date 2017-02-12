CREATE TABLE cities (
  id INTEGER PRIMARY KEY,
  city TEXT NOT NULL,
  country TEXT,
  population INTEGER,
  UNIQUE(city, country)
);

INSERT INTO cities VALUES (
  1, "London", "UK", 9787426
);

INSERT INTO cities VALUES (
  2, "New York City", "USA", 8405837
);

INSERT INTO cities VALUES (
  3, "Berlin", "Germany", NULL
);

INSERT INTO cities VALUES (
  4, "York", "UK", 153717
);

INSERT INTO cities VALUES (
  5, "Paris", "France", 2249975
);