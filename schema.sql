-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ludo.board
CREATE TABLE IF NOT EXISTS `board` (
  `x` smallint(2) NOT NULL,
  `y` smallint(2) NOT NULL,
  `b_color` enum('G','R','B','Y','W') NOT NULL,
  `piece_color` enum('G','R','B','Y') DEFAULT NULL,
  `piece` enum('1','2','3','4') DEFAULT NULL,
  `status` enum('BASE_Y','BASE_G','BASE_B','BASE_R','STARTING_Y','STARTING_G','STARTING_B','STARTING_R','PLAYING','SAFE') DEFAULT NULL,
  PRIMARY KEY (`x`,`y`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ludo.board: ~72 rows (approximately)
INSERT INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`, `status`) VALUES
	(1, 1, 'Y', 'Y', '1', 'BASE_Y'),
	(1, 2, 'Y', 'Y', '3', 'BASE_Y'),
	(1, 5, 'W', NULL, NULL, 'PLAYING'),
	(1, 6, 'W', NULL, NULL, 'PLAYING'),
	(1, 7, 'G', NULL, NULL, 'STARTING_G'),
	(1, 10, 'G', 'G', '3', 'BASE_G'),
	(1, 11, 'G', 'G', '1', 'BASE_G'),
	(2, 1, 'Y', 'Y', '2', 'BASE_Y'),
	(2, 2, 'Y', 'Y', '4', 'BASE_Y'),
	(2, 5, 'W', NULL, NULL, 'PLAYING'),
	(2, 6, 'G', NULL, NULL, 'SAFE'),
	(2, 7, 'W', NULL, NULL, 'PLAYING'),
	(2, 10, 'G', 'G', '4', 'BASE_G'),
	(2, 11, 'G', 'G', '2', 'BASE_G'),
	(3, 5, 'W', NULL, NULL, 'PLAYING'),
	(3, 6, 'G', NULL, NULL, 'SAFE'),
	(3, 7, 'W', NULL, NULL, 'PLAYING'),
	(4, 5, 'W', NULL, NULL, 'PLAYING'),
	(4, 6, 'G', NULL, NULL, 'SAFE'),
	(4, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 1, 'Y', NULL, NULL, 'STARTING_Y'),
	(5, 2, 'W', NULL, NULL, 'PLAYING'),
	(5, 3, 'W', NULL, NULL, 'PLAYING'),
	(5, 4, 'W', NULL, NULL, 'PLAYING'),
	(5, 5, 'W', NULL, NULL, 'PLAYING'),
	(5, 6, 'G', NULL, NULL, 'SAFE'),
	(5, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 8, 'W', NULL, NULL, 'PLAYING'),
	(5, 9, 'W', NULL, NULL, 'PLAYING'),
	(5, 10, 'W', NULL, NULL, 'PLAYING'),
	(5, 11, 'W', NULL, NULL, 'PLAYING'),
	(6, 1, 'W', NULL, NULL, 'PLAYING'),
	(6, 2, 'Y', NULL, NULL, 'SAFE'),
	(6, 3, 'Y', NULL, NULL, 'SAFE'),
	(6, 4, 'Y', NULL, NULL, 'SAFE'),
	(6, 5, 'Y', NULL, NULL, 'SAFE'),
	(6, 7, 'B', NULL, NULL, 'SAFE'),
	(6, 8, 'B', NULL, NULL, 'SAFE'),
	(6, 9, 'B', NULL, NULL, 'SAFE'),
	(6, 10, 'B', NULL, NULL, 'SAFE'),
	(6, 11, 'W', NULL, NULL, 'PLAYING'),
	(7, 1, 'W', NULL, NULL, 'PLAYING'),
	(7, 2, 'W', NULL, NULL, 'PLAYING'),
	(7, 3, 'W', NULL, NULL, 'PLAYING'),
	(7, 4, 'W', NULL, NULL, 'PLAYING'),
	(7, 5, 'W', NULL, NULL, 'PLAYING'),
	(7, 6, 'R', NULL, NULL, 'SAFE'),
	(7, 7, 'W', NULL, NULL, 'PLAYING'),
	(7, 8, 'W', NULL, NULL, 'PLAYING'),
	(7, 9, 'W', NULL, NULL, 'PLAYING'),
	(7, 10, 'W', NULL, NULL, 'PLAYING'),
	(7, 11, 'B', NULL, NULL, 'STARTING_B'),
	(8, 5, 'W', NULL, NULL, 'PLAYING'),
	(8, 6, 'R', NULL, NULL, 'SAFE'),
	(8, 7, 'W', NULL, NULL, 'PLAYING'),
	(9, 5, 'W', NULL, NULL, 'PLAYING'),
	(9, 6, 'R', NULL, NULL, 'SAFE'),
	(9, 7, 'W', NULL, NULL, 'PLAYING'),
	(10, 1, 'R', 'R', '2', 'BASE_R'),
	(10, 2, 'R', 'R', '4', 'BASE_R'),
	(10, 5, 'W', NULL, NULL, 'PLAYING'),
	(10, 6, 'R', NULL, NULL, 'SAFE'),
	(10, 7, 'W', NULL, NULL, 'PLAYING'),
	(10, 10, 'B', 'B', '4', 'BASE_B'),
	(10, 11, 'B', 'B', '2', 'BASE_B'),
	(11, 1, 'R', 'R', '1', 'BASE_R'),
	(11, 2, 'R', 'R', '3', 'BASE_R'),
	(11, 5, 'R', NULL, NULL, 'STARTING_R'),
	(11, 6, 'W', NULL, NULL, 'PLAYING'),
	(11, 7, 'W', NULL, NULL, 'PLAYING'),
	(11, 10, 'B', 'B', '3', 'BASE_B'),
	(11, 11, 'B', 'B', '1', 'BASE_B');

-- Dumping structure for table ludo.board_empty
CREATE TABLE IF NOT EXISTS `board_empty` (
  `x` smallint(2) NOT NULL,
  `y` smallint(2) NOT NULL,
  `b_color` enum('G','R','B','Y','W') NOT NULL,
  `piece_color` enum('G','R','B','Y') DEFAULT NULL,
  `piece` enum('1','2','3','4') DEFAULT NULL,
  `status` enum('BASE_Y','BASE_G','BASE_B','BASE_R','STARTING_Y','STARTING_G','STARTING_B','STARTING_R','PLAYING','SAFE') DEFAULT NULL,
  PRIMARY KEY (`x`,`y`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table ludo.board_empty: ~72 rows (approximately)
INSERT INTO `board_empty` (`x`, `y`, `b_color`, `piece_color`, `piece`, `status`) VALUES
	(1, 1, 'Y', 'Y', '1', 'BASE_Y'),
	(1, 2, 'Y', 'Y', '3', 'BASE_Y'),
	(1, 5, 'W', NULL, NULL, 'PLAYING'),
	(1, 6, 'W', NULL, NULL, 'PLAYING'),
	(1, 7, 'G', NULL, NULL, 'STARTING_G'),
	(1, 10, 'G', 'G', '3', 'BASE_G'),
	(1, 11, 'G', 'G', '1', 'BASE_G'),
	(2, 1, 'Y', 'Y', '2', 'BASE_Y'),
	(2, 2, 'Y', 'Y', '4', 'BASE_Y'),
	(2, 5, 'W', NULL, NULL, 'PLAYING'),
	(2, 6, 'G', NULL, NULL, 'SAFE'),
	(2, 7, 'W', NULL, NULL, 'PLAYING'),
	(2, 10, 'G', 'G', '4', 'BASE_G'),
	(2, 11, 'G', 'G', '2', 'BASE_G'),
	(3, 5, 'W', NULL, NULL, 'PLAYING'),
	(3, 6, 'G', NULL, NULL, 'SAFE'),
	(3, 7, 'W', NULL, NULL, 'PLAYING'),
	(4, 5, 'W', NULL, NULL, 'PLAYING'),
	(4, 6, 'G', NULL, NULL, 'SAFE'),
	(4, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 1, 'Y', NULL, NULL, 'STARTING_Y'),
	(5, 2, 'W', NULL, NULL, 'PLAYING'),
	(5, 3, 'W', NULL, NULL, 'PLAYING'),
	(5, 4, 'W', NULL, NULL, 'PLAYING'),
	(5, 5, 'W', NULL, NULL, 'PLAYING'),
	(5, 6, 'G', NULL, NULL, 'SAFE'),
	(5, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 8, 'W', NULL, NULL, 'PLAYING'),
	(5, 9, 'W', NULL, NULL, 'PLAYING'),
	(5, 10, 'W', NULL, NULL, 'PLAYING'),
	(5, 11, 'W', NULL, NULL, 'PLAYING'),
	(6, 1, 'W', NULL, NULL, 'PLAYING'),
	(6, 2, 'Y', NULL, NULL, 'SAFE'),
	(6, 3, 'Y', NULL, NULL, 'SAFE'),
	(6, 4, 'Y', NULL, NULL, 'SAFE'),
	(6, 5, 'Y', NULL, NULL, 'SAFE'),
	(6, 7, 'B', NULL, NULL, 'SAFE'),
	(6, 8, 'B', NULL, NULL, 'SAFE'),
	(6, 9, 'B', NULL, NULL, 'SAFE'),
	(6, 10, 'B', NULL, NULL, 'SAFE'),
	(6, 11, 'W', NULL, NULL, 'PLAYING'),
	(7, 1, 'W', NULL, NULL, 'PLAYING'),
	(7, 2, 'W', NULL, NULL, 'PLAYING'),
	(7, 3, 'W', NULL, NULL, 'PLAYING'),
	(7, 4, 'W', NULL, NULL, 'PLAYING'),
	(7, 5, 'W', NULL, NULL, 'PLAYING'),
	(7, 6, 'R', NULL, NULL, 'SAFE'),
	(7, 7, 'W', NULL, NULL, 'PLAYING'),
	(7, 8, 'W', NULL, NULL, 'PLAYING'),
	(7, 9, 'W', NULL, NULL, 'PLAYING'),
	(7, 10, 'W', NULL, NULL, 'PLAYING'),
	(7, 11, 'B', NULL, NULL, 'STARTING_B'),
	(8, 5, 'W', NULL, NULL, 'PLAYING'),
	(8, 6, 'R', NULL, NULL, 'SAFE'),
	(8, 7, 'W', NULL, NULL, 'PLAYING'),
	(9, 5, 'W', NULL, NULL, 'PLAYING'),
	(9, 6, 'R', NULL, NULL, 'SAFE'),
	(9, 7, 'W', NULL, NULL, 'PLAYING'),
	(10, 1, 'R', 'R', '2', 'BASE_R'),
	(10, 2, 'R', 'R', '4', 'BASE_R'),
	(10, 5, 'W', NULL, NULL, 'PLAYING'),
	(10, 6, 'R', NULL, NULL, 'SAFE'),
	(10, 7, 'W', NULL, NULL, 'PLAYING'),
	(10, 10, 'B', 'B', '4', 'BASE_B'),
	(10, 11, 'B', 'B', '2', 'BASE_B'),
	(11, 1, 'R', 'R', '1', 'BASE_R'),
	(11, 2, 'R', 'R', '3', 'BASE_R'),
	(11, 5, 'R', NULL, NULL, 'STARTING_R'),
	(11, 6, 'W', NULL, NULL, 'PLAYING'),
	(11, 7, 'W', NULL, NULL, 'PLAYING'),
	(11, 10, 'B', 'B', '3', 'BASE_B'),
	(11, 11, 'B', 'B', '1', 'BASE_B');

-- Dumping structure for procedure ludo.clean_board
DELIMITER //
CREATE PROCEDURE `clean_board`()
BEGIN
REPLACE INTO board SELECT * FROM board_empty;
END//
DELIMITER ;

-- Dumping structure for table ludo.game_status
CREATE TABLE IF NOT EXISTS `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` enum('Y','G','B','R') DEFAULT NULL,
  `result` enum('Y','G','B','R') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ludo.game_status: ~1 rows (approximately)
INSERT INTO `game_status` (`status`, `p_turn`, `result`, `last_change`) VALUES
	('started', 'Y', NULL, '2023-12-23 12:11:41');

-- Dumping structure for procedure ludo.move_piece
DELIMITER //
CREATE PROCEDURE `move_piece`(x1 tinyint, y1 tinyint, x2 tinyint, y2 tinyint)
BEGIN
	declare  p, p_color char;
	
	select  piece, piece_color into p, p_color 
	FROM `board` WHERE X=x1 AND Y=y1;
	
	update board
	set piece=p, piece_color=p_color
	where x=x2 and y=y2;
	
	UPDATE board
	SET piece=null, piece_color=null
	WHERE X=x1 AND Y=y1;

END//
DELIMITER ;

-- Dumping structure for table ludo.players
CREATE TABLE IF NOT EXISTS `players` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('Y','G','B','R') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`piece_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ludo.players: ~4 rows (approximately)
INSERT INTO `players` (`username`, `piece_color`, `token`, `last_action`) VALUES
	(NULL, 'Y', NULL, '2023-12-23 13:07:21'),
	(NULL, 'G', NULL, '2023-12-23 11:40:50'),
	(NULL, 'B', NULL, '2023-12-15 22:43:31'),
	(NULL, 'R', NULL, '2023-12-22 15:07:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
