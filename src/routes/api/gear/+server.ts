import { db } from '$lib/server/db';
import {
	gear as gearSchema,
	type Gear,
	gearset as gearsetSchema,
	type Gearset
} from '$lib/server/db/schema.js';
import { json, type RequestHandler } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';

export const GET: RequestHandler = async () => {
	const gear = await db
		.select()
		.from(gearSchema)
		.leftJoin(gearsetSchema, eq(gearSchema.gearsetId, gearsetSchema.id));

	return json({
		gear
	});
};

export type GetBody = {
	gear: { gear: Gear; gearset: Gearset }[];
};
