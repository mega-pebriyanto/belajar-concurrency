/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `suppliers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(30) NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `transaction` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kodeproduk` varchar(30) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'PENDING',
  `response_supplier` text,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `suppliers` (`id`, `supplier_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'supplier pulsa', 'https://run.mocky.io/v3/c6350cf9-0b96-4d06-afcd-0c41c337ecb6', '2022-05-07 08:22:45', '2022-05-07 14:27:10');


INSERT INTO `transaction` (`id`, `kodeproduk`, `tujuan`, `user_id`, `username`, `price`, `created_at`, `updated_at`, `status`, `response_supplier`, `supplier_id`) VALUES
(1, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1);
INSERT INTO `transaction` (`id`, `kodeproduk`, `tujuan`, `user_id`, `username`, `price`, `created_at`, `updated_at`, `status`, `response_supplier`, `supplier_id`) VALUES
(2, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1);
INSERT INTO `transaction` (`id`, `kodeproduk`, `tujuan`, `user_id`, `username`, `price`, `created_at`, `updated_at`, `status`, `response_supplier`, `supplier_id`) VALUES
(3, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1);
INSERT INTO `transaction` (`id`, `kodeproduk`, `tujuan`, `user_id`, `username`, `price`, `created_at`, `updated_at`, `status`, `response_supplier`, `supplier_id`) VALUES
(4, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(5, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(6, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(7, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(8, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(9, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(10, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(11, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(12, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(13, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(14, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(15, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(16, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(17, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(18, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(19, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(20, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(21, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(22, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(23, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(24, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(25, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(26, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(27, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(28, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(29, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(30, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(31, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(32, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(33, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(34, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(35, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(36, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(37, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1),
(38, 'S1', '089742749', '1', 'UBE', 8000, '2022-05-07 09:37:33', '2022-05-07 14:08:54', 'SUKSES', '{\"rc\":\"01\",\"status\":\"\"}', 1);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;