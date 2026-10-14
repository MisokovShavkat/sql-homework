create table if not exists  books(
    ID SERIAL PRIMARY KEY,
    Title TEXT NOT NULL,
    Author TEXT NOT NULL,
    Price INT NOT NULL,
    Pages INT NOT NULL,
    Created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

