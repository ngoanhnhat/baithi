-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 00:57:10.109




-- tables
-- Table: Nhan_Vien
CREATE TABLE Nhan_Vien (
    Ma_NV int  FILESTREAM NOT NULL,
    Ngay_Sinh date  NOT NULL,
    Gioi_Tinh varchar(25)  NOT NULL,
    Email varchar(255)  NOT NULL,
    Muc_Luong money  NOT NULL,
    Ma_Phong int  NOT NULL,
    CONSTRAINT Nhan_Vien_pk PRIMARY KEY  (Ma_NV)
)
;





-- Table: Phong_Ban
CREATE TABLE Phong_Ban (
    Ma_Phong int  FILESTREAM NOT NULL,
    Ten_Phong varchar(50)  NOT NULL,
    Nhan_Vien_Ma_NV int  NOT NULL,
    CONSTRAINT Phong_Ban_pk PRIMARY KEY  (Ma_Phong)
)
;









-- foreign keys
-- Reference:  Phong_Ban_Nhan_Vien (table: Phong_Ban)


ALTER TABLE Phong_Ban ADD CONSTRAINT Phong_Ban_Nhan_Vien 
    FOREIGN KEY (Nhan_Vien_Ma_NV)
    REFERENCES Nhan_Vien (Ma_NV)
;





-- End of file.

