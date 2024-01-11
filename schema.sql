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
  `piece_color` varchar(10) DEFAULT NULL,
  `piece` varchar(10) DEFAULT NULL,
  `status` enum('BASE_Y','BASE_G','BASE_B','BASE_R','STARTING_Y','STARTING_G','STARTING_B','STARTING_R','PLAYING','SAFE_Y','SAFE_G','SAFE_B','SAFE_R') DEFAULT NULL,
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
	(2, 6, 'G', NULL, NULL, 'SAFE_G'),
	(2, 7, 'W', NULL, NULL, 'PLAYING'),
	(2, 10, 'G', 'G', '4', 'BASE_G'),
	(2, 11, 'G', 'G', '2', 'BASE_G'),
	(3, 5, 'W', NULL, NULL, 'PLAYING'),
	(3, 6, 'G', NULL, NULL, 'SAFE_G'),
	(3, 7, 'W', NULL, NULL, 'PLAYING'),
	(4, 5, 'W', NULL, NULL, 'PLAYING'),
	(4, 6, 'G', NULL, NULL, 'SAFE_G'),
	(4, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 1, 'Y', NULL, NULL, 'STARTING_Y'),
	(5, 2, 'W', NULL, NULL, 'PLAYING'),
	(5, 3, 'W', NULL, NULL, 'PLAYING'),
	(5, 4, 'W', NULL, NULL, 'PLAYING'),
	(5, 5, 'W', NULL, NULL, 'PLAYING'),
	(5, 6, 'G', NULL, NULL, 'SAFE_G'),
	(5, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 8, 'W', NULL, NULL, 'PLAYING'),
	(5, 9, 'W', NULL, NULL, 'PLAYING'),
	(5, 10, 'W', NULL, NULL, 'PLAYING'),
	(5, 11, 'W', NULL, NULL, 'PLAYING'),
	(6, 1, 'W', NULL, NULL, 'PLAYING'),
	(6, 2, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 3, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 4, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 5, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 7, 'B', NULL, NULL, 'SAFE_B'),
	(6, 8, 'B', NULL, NULL, 'SAFE_B'),
	(6, 9, 'B', NULL, NULL, 'SAFE_B'),
	(6, 10, 'B', NULL, NULL, 'SAFE_B'),
	(6, 11, 'W', NULL, NULL, 'PLAYING'),
	(7, 1, 'W', NULL, NULL, 'PLAYING'),
	(7, 2, 'W', NULL, NULL, 'PLAYING'),
	(7, 3, 'W', NULL, NULL, 'PLAYING'),
	(7, 4, 'W', NULL, NULL, 'PLAYING'),
	(7, 5, 'W', NULL, NULL, 'PLAYING'),
	(7, 6, 'R', NULL, NULL, 'SAFE_R'),
	(7, 7, 'W', NULL, NULL, 'PLAYING'),
	(7, 8, 'W', NULL, NULL, 'PLAYING'),
	(7, 9, 'W', NULL, NULL, 'PLAYING'),
	(7, 10, 'W', NULL, NULL, 'PLAYING'),
	(7, 11, 'B', NULL, NULL, 'STARTING_B'),
	(8, 5, 'W', NULL, NULL, 'PLAYING'),
	(8, 6, 'R', NULL, NULL, 'SAFE_R'),
	(8, 7, 'W', NULL, NULL, 'PLAYING'),
	(9, 5, 'W', NULL, NULL, 'PLAYING'),
	(9, 6, 'R', NULL, NULL, 'SAFE_R'),
	(9, 7, 'W', NULL, NULL, 'PLAYING'),
	(10, 1, 'R', 'R', '2', 'BASE_R'),
	(10, 2, 'R', 'R', '4', 'BASE_R'),
	(10, 5, 'W', NULL, NULL, 'PLAYING'),
	(10, 6, 'R', NULL, NULL, 'SAFE_R'),
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
  `piece_color` varchar(10) DEFAULT NULL,
  `piece` varchar(10) DEFAULT NULL,
  `status` enum('BASE_Y','BASE_G','BASE_B','BASE_R','STARTING_Y','STARTING_G','STARTING_B','STARTING_R','PLAYING','SAFE_Y','SAFE_G','SAFE_B','SAFE_R') DEFAULT NULL,
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
	(2, 6, 'G', NULL, NULL, 'SAFE_G'),
	(2, 7, 'W', NULL, NULL, 'PLAYING'),
	(2, 10, 'G', 'G', '4', 'BASE_G'),
	(2, 11, 'G', 'G', '2', 'BASE_G'),
	(3, 5, 'W', NULL, NULL, 'PLAYING'),
	(3, 6, 'G', NULL, NULL, 'SAFE_G'),
	(3, 7, 'W', NULL, NULL, 'PLAYING'),
	(4, 5, 'W', NULL, NULL, 'PLAYING'),
	(4, 6, 'G', NULL, NULL, 'SAFE_G'),
	(4, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 1, 'Y', NULL, NULL, 'STARTING_Y'),
	(5, 2, 'W', NULL, NULL, 'PLAYING'),
	(5, 3, 'W', NULL, NULL, 'PLAYING'),
	(5, 4, 'W', NULL, NULL, 'PLAYING'),
	(5, 5, 'W', NULL, NULL, 'PLAYING'),
	(5, 6, 'G', NULL, NULL, 'SAFE_G'),
	(5, 7, 'W', NULL, NULL, 'PLAYING'),
	(5, 8, 'W', NULL, NULL, 'PLAYING'),
	(5, 9, 'W', NULL, NULL, 'PLAYING'),
	(5, 10, 'W', NULL, NULL, 'PLAYING'),
	(5, 11, 'W', NULL, NULL, 'PLAYING'),
	(6, 1, 'W', NULL, NULL, 'PLAYING'),
	(6, 2, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 3, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 4, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 5, 'Y', NULL, NULL, 'SAFE_Y'),
	(6, 7, 'B', NULL, NULL, 'SAFE_B'),
	(6, 8, 'B', NULL, NULL, 'SAFE_B'),
	(6, 9, 'B', NULL, NULL, 'SAFE_B'),
	(6, 10, 'B', NULL, NULL, 'SAFE_B'),
	(6, 11, 'W', NULL, NULL, 'PLAYING'),
	(7, 1, 'W', NULL, NULL, 'PLAYING'),
	(7, 2, 'W', NULL, NULL, 'PLAYING'),
	(7, 3, 'W', NULL, NULL, 'PLAYING'),
	(7, 4, 'W', NULL, NULL, 'PLAYING'),
	(7, 5, 'W', NULL, NULL, 'PLAYING'),
	(7, 6, 'R', NULL, NULL, 'SAFE_R'),
	(7, 7, 'W', NULL, NULL, 'PLAYING'),
	(7, 8, 'W', NULL, NULL, 'PLAYING'),
	(7, 9, 'W', NULL, NULL, 'PLAYING'),
	(7, 10, 'W', NULL, NULL, 'PLAYING'),
	(7, 11, 'B', NULL, NULL, 'STARTING_B'),
	(8, 5, 'W', NULL, NULL, 'PLAYING'),
	(8, 6, 'R', NULL, NULL, 'SAFE_R'),
	(8, 7, 'W', NULL, NULL, 'PLAYING'),
	(9, 5, 'W', NULL, NULL, 'PLAYING'),
	(9, 6, 'R', NULL, NULL, 'SAFE_R'),
	(9, 7, 'W', NULL, NULL, 'PLAYING'),
	(10, 1, 'R', 'R', '2', 'BASE_R'),
	(10, 2, 'R', 'R', '4', 'BASE_R'),
	(10, 5, 'W', NULL, NULL, 'PLAYING'),
	(10, 6, 'R', NULL, NULL, 'SAFE_R'),
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

-- Dumping structure for procedure ludo.clean_players
DELIMITER //
CREATE PROCEDURE `clean_players`()
BEGIN
REPLACE INTO players SELECT * FROM players_empty;
END//
DELIMITER ;

-- Dumping structure for procedure ludo.dice_turn
DELIMITER //
CREATE PROCEDURE `dice_turn`()
BEGIN
   DECLARE maxDiceValue INT;
   DECLARE done BOOLEAN;
   DECLARE startingPlayerPieceColor VARCHAR(255);
   DECLARE currentPlayerPieceColor VARCHAR(255);
   DECLARE currentPlayerDice INT;
    
   DECLARE playerCursor CURSOR FOR
   	SELECT piece_color, dice 
      FROM players 
      WHERE dice IS NOT NULL AND token IS NOT NULL;
   
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
   
   SET maxDiceValue = 0;

   OPEN playerCursor;
   
   read_loop: LOOP

   	FETCH playerCursor INTO currentPlayerPieceColor, currentPlayerDice;
   
   	IF done THEN
     		LEAVE read_loop;
    	END IF;
        
 		IF currentPlayerDice > maxDiceValue THEN
         SET maxDiceValue = currentPlayerDice;
         SET startingPlayerPieceColor = currentPlayerPieceColor;
      END IF;
      
   END LOOP;
      
   CLOSE playerCursor;

   IF maxDiceValue > 0 THEN
      UPDATE game_status
      SET p_turn = startingPlayerPieceColor;
   ELSE
      SELECT 'No rows found!' AS result;
   END IF;
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
	('started', 'Y', 'Y', '2024-01-11 19:10:12');

-- Dumping structure for procedure ludo.move_piece
DELIMITER //
CREATE PROCEDURE `move_piece`(
	IN `x1` tinyint,
	IN `y1` tinyint,
	IN `x2` tinyint,
	IN `y2` tinyint
)
BEGIN
    DECLARE p, p_color VARCHAR(10);
    DECLARE p_2, p_2_color VARCHAR(10);
    DECLARE next_player_color VARCHAR(10);
    DECLARE next_player_token CHAR;
    DECLARE found_player BOOLEAN DEFAULT FALSE;
    DECLARE piece_1, piece_2, piece_3, piece_4 VARCHAR(10);
    DECLARE piece_1_c, piece_2_c, piece_3_c, piece_4_c VARCHAR(10);
    
    SELECT piece, piece_color INTO p_2, p_2_color 
    FROM `board` WHERE X = x2 AND Y = y2;
    
    SELECT piece, piece_color INTO p, p_color 
    FROM `board` WHERE X = x1 AND Y = y1;
    
   -- Ean to koutaki ekkinisis exei mono 1 pioni 
 	IF CHAR_LENGTH(TRIM(p)) = 1 THEN
 		-- ean to koutki proorismou einai adeio
    	IF p_2 IS NULL AND p_2_color IS NULL THEN
			UPDATE board
         SET piece = p, piece_color = p_color
         WHERE x = x2 AND y = y2;

         UPDATE board
         SET piece = NULL, piece_color = NULL
         WHERE X = x1 AND Y = y1;
      -- ean to koutaki proorismou exei 1 pioni
      ELSEIF CHAR_LENGTH(TRIM(p_2)) = 1 THEN
      	-- ean to 1 pioni sto koutaki proorismou einai idiou xromatos me to 1 pioni sto koutaki ekkinishs
      	IF p_2_color = p_color THEN
      		UPDATE board
            SET piece = CONCAT(p_2, ',', p), piece_color = p_color
            WHERE X = x2 AND Y = y2;

            UPDATE board
            SET piece = NULL, piece_color = NULL
            WHERE X = x1 AND Y = y1;
         -- ean to 1 pioni sto koutaki proorismou DEN einai idiou xromatos me to 1 pioni sto koutaki ekkinishs
         ELSE
         	UPDATE board
            SET piece = p_2, piece_color = p_2_color
            WHERE status = CONCAT('BASE_', p_2_color) AND piece IS NULL;

            UPDATE board
            SET piece = p, piece_color = p_color
            WHERE x = x2 AND y = y2;
            
            UPDATE board
       		SET piece = NULL, piece_color = NULL
        		WHERE X = x1 AND Y = y1;
      	END IF;
      -- Ean to koutaki proorismou exei 2 pionia
      ELSEIF CHAR_LENGTH(TRIM(p_2)) = 3 THEN
      	-- ean kai ta 2 pionia sto koutaki proorismou einai idiou xromatos me ekkinishs
      	IF p_2_color = p_color THEN
      		UPDATE board
            SET piece = CONCAT(p_2, ',', p), piece_color = p_color
            WHERE X = x2 AND Y = y2;

            UPDATE board
            SET piece = NULL, piece_color = NULL
            WHERE X = x1 AND Y = y1;
         -- koutaki proorismou exei 2 pionia diaforetikou xromatos me ekkinishs
         ELSE
         	SET piece_3 = TRIM(SUBSTRING_INDEX(p_2, ',', 1));
				SET piece_4 = TRIM(SUBSTRING_INDEX(p_2, ',', -1));
         	
         	UPDATE board
            SET piece = piece_3, piece_color = p_2_color
            WHERE status = CONCAT('BASE_', p_2_color) AND piece IS NULL
            LIMIT 1;
            
            UPDATE board
            SET piece = piece_4, piece_color = p_2_color
            WHERE status = CONCAT('BASE_', p_2_color) AND piece IS NULL
            LIMIT 1;
            
            UPDATE board
            SET piece = p, piece_color = p_color
            WHERE x = x2 AND y = y2;
            
            UPDATE board
            SET piece = NULL, piece_color = NULL
            WHERE X = x1 AND Y = y1;
      	END IF;
    	END IF;
   -- ekkinhsh exei 2 pionia
   ELSEIF CHAR_LENGTH(TRIM(p)) = 3 THEN
   	-- ean proorismos einai adeios
   	IF p_2 IS NULL AND p_2_color IS NULL THEN
   		SET piece_1 = SUBSTRING_INDEX(p, ',', 1);
			SET piece_2 = SUBSTRING_INDEX(p, ',', -1);
		
			UPDATE board
      	SET piece = piece_1, piece_color = p_color
      	WHERE x = x2 AND y = y2;
      
      	UPDATE board
      	SET piece = piece_2, piece_color = p_color
      	WHERE x = x1 AND y = y1;
      -- Proorismos exei 1 pioni diaf xromatos
      ELSEIF CHAR_LENGTH(TRIM(p_2)) = 1 THEN
      	SET piece_1 = SUBSTRING_INDEX(p, ',', 1);
			SET piece_2 = SUBSTRING_INDEX(p, ',', -1);
			
			UPDATE board
         SET piece = p_2, piece_color = p_2_color
         WHERE status = CONCAT('BASE_', p_2_color) AND piece IS NULL
         LIMIT 1;
         
         UPDATE board
         SET piece = piece_1, piece_color = p_color
         WHERE x = x2 AND y = y2;
         
         UPDATE board
         SET piece = piece_2, piece_color = p_color
         WHERE X = x1 AND Y = y1;
      -- proorismos exei 2 pionia diaforetikou xromatos
      ELSE
      	SET piece_1 = SUBSTRING_INDEX(p, ',', 1);
			SET piece_2 = SUBSTRING_INDEX(p, ',', -1);
			
			SET piece_3 = SUBSTRING_INDEX(p_2, ',', 1);
			SET piece_4 = SUBSTRING_INDEX(p_2, ',', -1);
			
			SELECT piece_3, piece_4;
			
			UPDATE board
         SET piece = piece_3, piece_color = p_2_color
         WHERE status = CONCAT('BASE_', p_2_color) AND piece IS NULL
         LIMIT 1;
         
         UPDATE board
         SET piece = piece_4, piece_color = p_2_color
         WHERE status = CONCAT('BASE_', p_2_color) AND piece IS NULL
         LIMIT 1;
         
         UPDATE board
         SET piece = piece_1, piece_color = p_color
         WHERE x = x2 AND y = y2;
         
         UPDATE board
         SET piece = piece_2, piece_color = p_color
         WHERE X = x1 AND Y = y1;
   	END IF;
   END IF;
    
    SET next_player_color =
        CASE
            WHEN p_color = 'Y' THEN 'G'
            WHEN p_color = 'G' THEN 'B'
            WHEN p_color = 'B' THEN 'R'
            WHEN p_color = 'R' THEN 'Y'
        END;

    WHILE NOT found_player DO
        SELECT token INTO next_player_token
        FROM `players`
        WHERE piece_color = next_player_color;

        IF next_player_token IS NOT NULL THEN
            SET found_player = TRUE; -- Break the loop
        ELSE
            SET next_player_color =
                CASE
                    WHEN next_player_color = 'Y' THEN 'G'
                    WHEN next_player_color = 'G' THEN 'B'
                    WHEN next_player_color = 'B' THEN 'R'
                    WHEN next_player_color = 'R' THEN 'Y'
                END;
        END IF;
    END WHILE;

    UPDATE game_status
    SET p_turn = next_player_color;
END//
DELIMITER ;

-- Dumping structure for table ludo.players
CREATE TABLE IF NOT EXISTS `players` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('Y','G','B','R') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dice` int(11) DEFAULT NULL,
  PRIMARY KEY (`piece_color`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table ludo.players: ~4 rows (approximately)
INSERT INTO `players` (`username`, `piece_color`, `token`, `last_action`, `dice`) VALUES
	(NULL, 'Y', NULL, '2024-01-11 19:10:43', NULL),
	(NULL, 'G', NULL, '2024-01-11 19:09:57', NULL),
	(NULL, 'B', NULL, NULL, NULL),
	(NULL, 'R', NULL, '2024-01-11 18:43:37', NULL);

-- Dumping structure for table ludo.players_empty
CREATE TABLE IF NOT EXISTS `players_empty` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('Y','G','B','R') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dice` int(11) DEFAULT NULL,
  PRIMARY KEY (`piece_color`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table ludo.players_empty: ~4 rows (approximately)
INSERT INTO `players_empty` (`username`, `piece_color`, `token`, `last_action`, `dice`) VALUES
	(NULL, 'Y', NULL, NULL, NULL),
	(NULL, 'G', NULL, NULL, NULL),
	(NULL, 'B', NULL, NULL, NULL),
	(NULL, 'R', NULL, NULL, NULL);

-- Dumping structure for trigger ludo.update_turn
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER update_turn
AFTER UPDATE ON players
FOR EACH ROW
BEGIN
        UPDATE game_status
        SET p_turn = NEW.piece_color;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
