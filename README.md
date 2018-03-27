# Rings local data dictionary

The Ring dictionary that describe objects related to planetary ring observation. It includes classes to describe a 
ring model, occulations (radio and stellar) and ring relationships.

## Versions

- [1.6.0.0](src/1.6.0.0)

## Builds

A Local Data Dictionary (LDD) is built for each version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).
The build process insures compatiblity of the LDD with the core information model.

This LDD has been built for the following versions of the PDS4 information model.

- [1.7.0.0](build/1.7.0.0)
- [1.8.0.0](build/1.8.0.0)
- [1.9.0.0](build/1.9.0.0)
	- package: [v1.9.0.0](https://github.com/nasa-pds/ldd-rings/releases/tag/v1.9.0.0)
	
## Notes

Each build is generating using the [lddtool](https://pds.nasa.gov/pds4/software/ldd/) specific to a version of the [PDS4 Information Model](https://pds.nasa.gov/pds4/doc/im/).

Documentation included in the source (src) directory is generated using the "pds-ldd-doc" tool in the [pds4-tools](https://github.com/nasa-pds/pds4-tools) package.

After a build the README.md files are updated (manually) to reflect the content of repository.

