#
#<?php die('Forbidden.'); ?>
#Date: 2014-09-03 00:48:45 UTC
#Software: Joomla Platform 13.1.0 Stable [ Curiosity ] 24-Apr-2013 00:00 GMT

#Fields: datetime	priority	category	message
2014-09-03T00:48:45+00:00	INFO	update	Finalising installation.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: /* Core 3.2 schema updates */  ALTER TABLE `#__content_types` ADD COLUMN `conten.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__content_types` SET `content_history_options` = '{"formFile":"administ.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__content_types` SET `content_history_options` = '{"formFile":"administ.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__content_types` SET `content_history_options` = '{"formFile":"administ.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__content_types` SET `content_history_options` = '{"formFile":"administ.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__content_types` SET `content_history_options` = '{"formFile":"administ.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__content_types` SET `content_history_options` = '{"formFile":"administ.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: INSERT INTO `#__content_types` (`type_title`, `type_alias`, `table`, `rules`, `f.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__extensions` SET `params` = '{"template_positions_display":"0","upload.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: UPDATE `#__extensions` SET `params` = '{"lineNumbers":"1","lineWrapping":"1","ma.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: INSERT INTO `#__menu` (`menutype`, `title`, `alias`, `note`, `path`, `link`, `ty.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: ALTER TABLE `#__modules` ADD COLUMN `asset_id` INT(10) UNSIGNED NOT NULL DEFAULT.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: CREATE TABLE `#__postinstall_messages` (   `postinstall_message_id` bigint(20) u.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: INSERT INTO `#__postinstall_messages` (`extension_id`, `title_key`, `description.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: CREATE TABLE IF NOT EXISTS `#__ucm_history` (   `version_id` int(10) unsigned NO.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: ALTER TABLE `#__users` ADD COLUMN `otpKey` varchar(1000) NOT NULL DEFAULT '' COM.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: ALTER TABLE `#__users` ADD COLUMN `otep` varchar(1000) NOT NULL DEFAULT '' COMME.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: CREATE TABLE IF NOT EXISTS `#__user_keys` (   `id` int(10) unsigned NOT NULL AUT.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.0. Query text: /* Update bad params for two cpanel modules */  UPDATE `#__modules` SET `params`.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.1. Query text: DELETE FROM `#__postinstall_messages` WHERE `title_key` = 'PLG_USER_JOOMLA_POSTI.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2013-12-22. Query text: ALTER TABLE `#__update_sites` ADD COLUMN `extra_query` VARCHAR(1000) DEFAULT '';.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2013-12-22. Query text: ALTER TABLE `#__updates` ADD COLUMN `extra_query` VARCHAR(1000) DEFAULT '';.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2013-12-28. Query text: UPDATE `#__menu` SET `component_id` = (SELECT `extension_id` FROM `#__extensions.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2014-01-08. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2014-01-15. Query text: INSERT INTO `#__postinstall_messages` (`extension_id`, `title_key`, `description.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2014-01-18. Query text: /* Update updates version length */ ALTER TABLE `#__updates` MODIFY `version` va.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.2-2014-01-23. Query text: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2014-09-03T00:48:45+00:00	INFO	update	Ran query from file 3.2.3-2014-02-20. Query text: UPDATE `#__extensions` ext1, `#__extensions` ext2 SET ext1.`params` =  ext2.`par.
2014-09-03T00:48:45+00:00	INFO	update	Deleting removed files and folders.
2014-09-03T00:48:46+00:00	INFO	update	Cleaning up after installation.
2014-09-03T00:48:46+00:00	INFO	update	Update to version 3.2.4 is complete.
2014-09-03T21:01:50+00:00	INFO	update	Обновление запущено пользователем Super User (477). Предыдущая версия 3.2.4.
2014-09-03T21:01:50+00:00	INFO	update	Загрузка файла обновления с .
2014-09-03T21:01:58+00:00	INFO	update	Файл Joomla_3.3.3-Stable-Update_Package.zip успешно загружен.
2014-09-03T21:01:58+00:00	INFO	update	Начало установки новой версии.
2014-09-03T21:02:06+00:00	INFO	update	Завершение установки.
2014-09-03T21:02:06+00:00	INFO	update	Выполнение запроса из файла 3.3.0-2014-02-16. Текст запроса: ALTER TABLE `#__users` ADD COLUMN `requireReset` tinyint(4) NOT NULL DEFAULT 0 C.
2014-09-03T21:02:06+00:00	INFO	update	Выполнение запроса из файла 3.3.0-2014-04-02. Текст запроса: INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`.
2014-09-03T21:02:06+00:00	INFO	update	Удаление устаревших файлов и директорий.
2014-09-03T21:02:07+00:00	INFO	update	Cleaning up after installation.
2014-09-03T21:02:07+00:00	INFO	update	Обновление до версии 3.3.3 завершено.
