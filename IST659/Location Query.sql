INSERT INTO Location (location_name, location_worldspace_ID, location_owner) VALUES

/*location_name references a quest location within a game region and worldspace.
	location_worldspace_ID acts as a FK to specify region and worldspace affiliation.

	Note that Unclaimed and Independent are NOT the same. Unclaimed is a location that has no owner or is abandoned,
	while Indpendent signifies that the location is not affialated with any major faction.
*/

	('Vault 111', 1, 'Unclaimed'),
	('Diamond City', 16, 'Diamond City'),
	('Valentine Detective Agency', 16, 'Nick Valentine'),
	('Fort Hagen', 3, 'Conrad Kellog'),
	('Crater of Atom', 14, 'Children of Atom'),
	('C.I.T. Ruins', 13, 'The Institute'),
	('Railroad HQ', 18, 'The Railroad'),
	('The Institute', 13, 'The Institute'),
	('Museum of Freedom', 2, 'Commonwealth Minutemen'),
	('The Castle', 19, 'Commonwealth Minutemen'),
	('Abnernathy Farm', 1, 'Independent'),
	('Saugus Ironworks', 1, 'Forged'),
	('Cambridge Police Station', 13, 'Brotherhood of Steel'),
	('The Prydwen', 17, 'Brotherhood of Steel'),
	('Boston Common', 16, 'Independent'),
	('The Switchboard', 1, 'The Institute'),
	('Libertalia', 1, 'Raiders'),
	('Mass Fusion Building', 16, 'The Gunners'),
	('Vault 81', 1, 'Vault 81'),
	('Covenant', 1, 'Independent'),
	('USS Constitution', 20, 'Independent'),
	('Cabot House', 18, 'Independent'),
	('Goodneighbor', 16, 'Goodneighbor'),
	('Atom Cats Garage', 1, 'Atom Cats'),
	('The Slog', 1, 'Commonwealth Minutemen'),
	('Waltz Consumer Electronics', 13, 'Unclaimed'),
	('The Mechanists Lair', 17, 'The Mechanist'),
	('Nakano Residence', 1, 'Independent'),
	('The Last Plank', 21, 'Harbormen'),
	('Acadia', 23, 'Acadia'),
	('The Nucleus', 24, 'Church of the Children of Atom'),
	/* Notice that this location has the same name as its region? This is accurate per Bethesda's documentation.
		Why make it potentially confusing? Guess it isn't a Bethesda game without the potential for bugs!
	*/
	('Vault 88', 1, 'Vault 88'),
	('Nuka-World Transit Center', 1, 'The Gunners'),
	('Nuka Station', 31, 'Overboss'),
	('Fizz Top Grille', 31, 'Overboss'),
	('The World of Refreshment', 29, 'Unclaimed')
