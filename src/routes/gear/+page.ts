import type { GetBody } from '$api/gear/+server.js';

export async function load({ fetch }) {
	const gearRes = await fetch('/api/gear');
	const gearJson: GetBody = await gearRes.json();

	return {
		gear: gearJson.gear
	};
}
