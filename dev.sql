CREATE TABLE music(
    id_music int primary key,
    title varchar(100) not null,
    artist VARCHAR(100) not null,
    album VARCHAR(100),
    release_year int,
    genre VARCHAR(50)
);
CREATE TABLE materiel(
    id_materiel int primary key,
    type VARCHAR(50) not null,
    brand VARCHAR(50),
    model VARCHAR(50),
    purchase_date DATE,
    condition VARCHAR(50),
    id_music int,
    constraint fk_music foreign key (id_music) references music(id_music)  
);
insert INTO music VALUES(1,'Song1','Artist1','Album1',2000,'Genre1'),(2,'Song2','Artist2','Album2',2005,'Genre2');
insert INTO materiel VALUES(1,'Guitar','Fender','Stratocaster','2020-01-15','New',1),(2,'Drums','Yamaha','Stage Custom','2019-06-20','Used',2);
SELECT id_music title,artist,album,release_year,genre
FROM music
WHERE genre='Genre1';
SELECT id_materiel, type, brand, model, purchase_date, condition
FROM materiel
INNER JOIN music ON materiel.id_music = music.id_music
WHERE release_year > 2004;

