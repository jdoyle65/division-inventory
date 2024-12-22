import { sqliteTable, text, integer } from 'drizzle-orm/sqlite-core';

export const user = sqliteTable('user', {
	id: text('id').primaryKey(),
	age: integer('age'),
	username: text('username').notNull().unique(),
	passwordHash: text('password_hash').notNull()
});

export const session = sqliteTable('session', {
	id: text('id').primaryKey(),
	userId: text('user_id')
		.notNull()
		.references(() => user.id),
	expiresAt: integer('expires_at', { mode: 'timestamp' }).notNull()
});

export const gear = sqliteTable('gear', {
	id: text('id').primaryKey(),
	name: text('name').notNull(),
	type: text('type').notNull(),
	isExotic: integer('is_exotic').notNull(),
	gearsetId: text('gearset_id').references(() => gearset.id)
});

export const gearset = sqliteTable('gearset', {
	id: text('id').primaryKey(),
	name: text('name').notNull(),
	isClassified: integer('is_classified').notNull()
});

export const gearInstance = sqliteTable('gear_instance', {
	id: text('id').primaryKey(),
	gearId: text('gear_id')
		.notNull()
		.references(() => gear.id),
	userId: text('user_id')
		.notNull()
		.references(() => user.id),
	firearms: integer('firearms').notNull(),
	stamina: integer('stamina').notNull(),
	electronics: integer('electronics').notNull(),
	armor: integer('armor').notNull(),
	gearscore: integer('gearscore').notNull()
});

export type Session = typeof session.$inferSelect;
export type User = typeof user.$inferSelect;
export type Gear = typeof gear.$inferSelect;
export type Gearset = typeof gearset.$inferSelect;
export type GearInstance = typeof gearInstance.$inferSelect;
