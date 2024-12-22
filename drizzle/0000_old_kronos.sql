CREATE TABLE `gear` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`type` text NOT NULL,
	`is_exotic` integer NOT NULL,
	`gearset_id` text,
	FOREIGN KEY (`gearset_id`) REFERENCES `gearset`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `gear_instance` (
	`id` text PRIMARY KEY NOT NULL,
	`gear_id` text NOT NULL,
	`user_id` text NOT NULL,
	`firearms` integer NOT NULL,
	`stamina` integer NOT NULL,
	`electronics` integer NOT NULL,
	`armor` integer NOT NULL,
	`gearscore` integer NOT NULL,
	FOREIGN KEY (`gear_id`) REFERENCES `gear`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `gearset` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`is_classified` integer NOT NULL
);
--> statement-breakpoint
CREATE TABLE `session` (
	`id` text PRIMARY KEY NOT NULL,
	`user_id` text NOT NULL,
	`expires_at` integer NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `user` (
	`id` text PRIMARY KEY NOT NULL,
	`age` integer,
	`username` text NOT NULL,
	`password_hash` text NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `user_username_unique` ON `user` (`username`);