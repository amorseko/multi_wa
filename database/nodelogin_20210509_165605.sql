-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "tbl_users" ------------------------------------
CREATE TABLE `tbl_users`( 
	`id` Int( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`username` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`created_at` Timestamp NOT NULL,
	`updated_at` Timestamp NULL,
	`role` Enum( 'user', 'admin' ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------


-- CREATE TABLE "tbl_wa" ---------------------------------------
CREATE TABLE `tbl_wa`( 
	`id` Int( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`userid` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`WABrowserId` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "tbl_message" ----------------------------------
CREATE TABLE `tbl_message`( 
	`id` Int( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`number` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`message` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`sender` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`status` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`desc` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- Dump data of "tbl_users" --------------------------------
BEGIN;

INSERT INTO `tbl_users`(`id`,`username`,`email`,`password`,`created_at`,`updated_at`,`role`) VALUES 
( '6', 'admin', 'admin@gmail.com', '$2b$10$waBQ5VN.dFx6SfCdVR0B8.NyTzWKLZmNh923BhGqoloDF.jWIEAVq', '2021-05-08 00:00:00', NULL, 'user' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "tbl_wa" -----------------------------------
BEGIN;


-- ---------------------------------------------------------


-- Dump data of "tbl_message" ------------------------------
BEGIN;

INSERT INTO `tbl_message`(`id`,`number`,`message`,`sender`,`status`,`desc`) VALUES 
( '2', '6282165561175@c.us', 'INI PESAN MEDIA', 'imamwasmawi', 'terkirim', 'message' ),
( '3', '6282165561175@c.us', 'INI PESAN FILE', 'imamwasmawi', 'media', 'message' ),
( '4', '6282165561175@c.us', 'kljkjljlk jlkjl jljljlk jlkjkljlk', 'imamwasmawi', 'terkirim', 'media' ),
( '5', '6282165561175@c.us', 'lknlknlknnlknl lkjlkjljkjl', 'imamwasmawi', 'terkirim', 'message' ),
( '6', '6282165561175@c.us', 'lkmlkmlm', 'imamwasmawi', 'terkirim', 'media' ),
( '7', '6282165561175@c.us', 'imam apa kabar', 'imamwasmawi', 'terkirim', 'message' ),
( '8', '6282165561175@c.us', 'hallo imam wasmawi', 'imamwasmawi', 'terkirim', 'media' ),
( '9', '6282165561175@c.us', 'akjdhkajhdkajd', 'imamwasmawi', 'terkirim', 'message' ),
( '10', '6282165561175@c.us', 'imam wasmawi', 'imamwasmawi', 'terkirim', 'message' ),
( '11', '6282165561175@c.us', 'imam wasmawi', 'imamwasmawi', 'terkirim', 'message' ),
( '12', '6282165561175@c.us', 'ini tester flash now', 'imamwasmawi', 'terkirim', 'message' ),
( '13', '6282165561175@c.us', 'adfafafd', 'imamwasmawi', 'terkirim', 'message' ),
( '14', '6282165561175@c.us', 'afdadfadf', 'imamwasmawi', 'terkirim', 'message' ),
( '15', '6282165561175@c.us', 'kjnkjnkjn', 'imamwasmawi', 'terkirim', 'message' ),
( '16', '6282165561175@c.us', 'klmmllk', 'imamwasmawi', 'terkirim', 'message' ),
( '17', '6282165561175@c.us', 'lkkllk', 'imamwasmawi', 'terkirim', 'message' ),
( '18', '6282165561175@c.us', 'adfadfad', 'imamwasmawi', 'terkirim', 'message' ),
( '19', '6282165561175@c.us', 'adfakldfjjadfjljdalfa kajfdlkajflka ', 'imamwasmawi', 'terkirim', 'message' ),
( '20', '6282165561175@c.us', 'imam wasmawi berhasil', 'imamwasmawi', 'terkirim', 'message' ),
( '21', '6282165561175@c.us', 'send media hjgjhg', 'imamwasmawi', 'terkirim', 'media' ),
( '22', '6282165561175@c.us', 'khljlkjlk', 'imamwasmawi', 'terkirim', 'message' ),
( '23', '6282165561175@c.us', 'jnkjjnjn', 'imamwasmawi', 'terkirim', 'media' ),
( '24', '6282165561175@c.us', 'kjbnkjnlknknl', 'imamwasmawi', 'terkirim', 'media' );
COMMIT;
-- ---------------------------------------------------------


-- CREATE INDEX "index" ----------------------------------------
CREATE INDEX `index` USING BTREE ON `tbl_users`( `id` );
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


