CREATE TABLE MK_Kalkulus (
	NIM Varchar(10),
	Nama Varchar(30),
	UTS INTEGER,
	UAS INTEGER
)

--Input data
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES ("2100015049","Wisnu Catur R",70,90), 
       ("2100015041","Sindy Mei Marantika",70,70),
       ("2100015006","Januar Nur Rasyid",60,70),
       ("2100015037","Lisa Nessa Safitri",80,80),
       ("2100015051","Saiful Andika",85,75)
       
--Melihat Tabel
SELECT * FROM MK_Kalkulus 

--Melihat Tabel Rata-rata Nilai Tabel
SELECT *,((UTS+UAS)/2) Nilai_akhir FROM MK_Kalkulus 

--Melihat Tabel Nilai Rata-rata Nilai Akhir
SELECT AVG((UTS+UAS)/2) FROM MK_Kalkulus 

--Menampilkan data diatas rata-rata (rata-rata= 75)
SELECT *,((UTS+UAS)/2) Nilai_akhir FROM MK_Kalkulus 
WHERE Nilai_akhir > 75

--input data
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES ("2215015035","Hasan Darmawan",40,40)

--Melihat data
SELECT *,((UTS+UAS)/2) Nilai_akhir FROM MK_Kalkulus 
--Rata-rata nilai akhir
SELECT AVG((UTS+UAS)/2) FROM MK_Kalkulus 


--Sub Query menampilkan data lebih dari rata-rata
SELECT *,((UTS+UAS)/2) Nilai_akhir FROM MK_Kalkulus 
WHERE Nilai_akhir > (SELECT AVG((UTS+UAS)/2) FROM MK_Kalkulus)

--Input data
INSERT INTO MK_Kalkulus (NIM, NAMA,UTS,UAS)
VALUES ("2100015051","Saiful Andika",100,50)

SELECT *,((UTS+UAS)/2) Nilai_akhir FROM MK_Kalkulus 



