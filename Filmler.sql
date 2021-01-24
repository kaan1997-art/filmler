select * from Filmler
select * from Turler
select * from FilmlerTurler
select * from Yonetmen
select * from FilmlerYonetmen
select * from Oyuncu
select * from FilmlerOyuncu
select * from Karakter
select * from FilmlerKarakter
go
insert into Filmler (Id,Adi,YapimYýlý,Gisesi) values (1,'Jaws','1975-06-25',470000000)
insert into Filmler (Id,Adi,YapimYýlý,Gisesi) values (2,'Wanted','2008-06-12',null)
insert into Filmler (Id,Adi,YapimYýlý,Gisesi) values (3,'The Gentlemen','2020-02-14',115200000)
go
insert into Turler (Adi) values ('Korku')
insert into Turler (Adi) values ('Aksiyon')
insert into Turler (Adi) values ('Macera')
go
insert into FilmlerTurler(FilmlerId,TurlerId) values (1,1)
insert into FilmlerTurler(FilmlerId,TurlerId) values (2,3)
insert into FilmlerTurler(FilmlerId,TurlerId) values (3,2)
go
insert into Yonetmen(Adi,Soyadi) values ('Steven','Spielberg')
insert into Yonetmen(Adi,Soyadi) values ('Timur','Bekmambetov')
insert into Yonetmen(Adi,Soyadi) values ('Guy','Ritch')
go
insert into FilmlerYonetmen(FilmlerId,YonetmenId) values (1,1)
insert into FilmlerYonetmen(FilmlerId,YonetmenId) values (2,2)
insert into FilmlerYonetmen(FilmlerId,YonetmenId) values (3,3)
go
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('Roy','Scheider','1932-11-10')
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('James','McAvoy','1979-04-21')
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('Angelina','Jolie','1975-06-04')
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('Morgan','Freeman','1937-06-01')
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('Charlie','Hunnam','1980-04-10')
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('Matthew','McConaughey','1969-11-04')
insert into Oyuncu(Adi,Soyadi,DogumTarihi) values ('Colin','Farrell','1976-05-31')
go
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (1,1)
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (2,2)
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (2,3)
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (2,4)
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (3,5)
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (3,6)
insert into FilmlerOyuncu(FilmlerId,OyuncuId) values (3,7)
go
insert into Karakter(AdiSoyadi,OyuncuId) values ('Martin Brody',1)
insert into Karakter(AdiSoyadi,OyuncuId) values ('Wesley Gibson',2)
insert into Karakter(AdiSoyadi,OyuncuId) values ('Fox',3)
insert into Karakter(AdiSoyadi,OyuncuId) values ('Sloan',4)
insert into Karakter(AdiSoyadi,OyuncuId) values ('Ray',5)
insert into Karakter(AdiSoyadi,OyuncuId) values ('Mickey Pearson',6)
insert into Karakter(AdiSoyadi,OyuncuId) values ('Coach',7)
go
insert into FilmlerKarakter(FilmlerId,KarakterId) values (1,1)
insert into FilmlerKarakter(FilmlerId,KarakterId) values (2,2)
insert into FilmlerKarakter(FilmlerId,KarakterId) values (2,3)
insert into FilmlerKarakter(FilmlerId,KarakterId) values (2,4)
insert into FilmlerKarakter(FilmlerId,KarakterId) values (3,5)
insert into FilmlerKarakter(FilmlerId,KarakterId) values (3,6)
insert into FilmlerKarakter(FilmlerId,KarakterId) values (3,7)
go
select * from Filmler inner join FilmlerTurler on Filmler.Id=FilmlerTurler.FilmlerId
inner join Turler on FilmlerTurler.TurlerId=Turler.Id

select * from Filmler inner join FilmlerYonetmen on Filmler.Id=FilmlerYonetmen.FilmlerId
inner join Yonetmen on FilmlerYonetmen.YonetmenId=Yonetmen.Id

select * from Oyuncu inner join Karakter on Oyuncu.Id=Karakter.OyuncuId

select * from Filmler inner join FilmlerOyuncu on Filmler.Id=FilmlerOyuncu.FilmlerId
inner join Oyuncu on FilmlerOyuncu.OyuncuId=Oyuncu.Id

select * from Filmler inner join FilmlerKarakter on Filmler.Id=FilmlerKarakter.FilmlerId
inner join Karakter on FilmlerKarakter.KarakterId=Karakter.Id

go

select Adi,count(Adi) as FilmSayýsý from Filmler
group by Adi



