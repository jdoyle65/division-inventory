<script lang="ts">
	import * as Table from '$lib/components/ui/table/index.js';
	let { data } = $props();

	let rowColor = (gearRow: any) => {
		if (gearRow.gear.isExotic) {
			return 'bg-red-500 text-white hover:text-black';
		}

		if (!!gearRow.gearset) {
			return 'bg-[#09faa3]';
		}

		return '';
	};
</script>

<Table.Root>
	<Table.Header>
		<Table.Row>
			<Table.Head>ID</Table.Head>
			<Table.Head>Name</Table.Head>
			<Table.Head>Type</Table.Head>
			<Table.Head>Is Exotic?</Table.Head>
			<Table.Head>Gearset</Table.Head>
		</Table.Row>
	</Table.Header>
	<Table.Body>
		{#each data.gear as gear}
			<Table.Row class={rowColor(gear)}>
				<Table.Cell>{gear.gear.id}</Table.Cell>
				<Table.Cell>{gear.gear.name}</Table.Cell>
				<Table.Cell>{gear.gear.type}</Table.Cell>
				<Table.Cell>{gear.gear.isExotic ? 'Yes' : 'No'}</Table.Cell>
				<Table.Cell>
					{#if gear.gearset}
						{gear.gearset.name}
						{#if gear.gearset.isClassified}
							{' (Classified)'}
						{/if}
					{:else}
						-
					{/if}
				</Table.Cell>
			</Table.Row>
		{/each}
	</Table.Body>
</Table.Root>
