# ar-demo

Demonstrates how to provide phone and tablet based Augmented Reality (AR) in Magnolia CMS via a content type and a templating component.


## Features

The `_dev/simple-example` dir provides a complete web-based AR example without any CMS connection.

Try it out now by visiting https://magnolia-cms.github.io/ar-demo/_dev/simple-example/ar.html on your (AR capable) phone or tablet.

---

### For Magnolia:

A '3d models' content app allows authors to create items that combine the necessary 3d models with a fallback poster image.

An 'augmentedReality' templating component allows these 3d-models to be placed on pages by authors.


## Usage

This repository is a Magnolia 'Light Module'.

Drop it in the resources directory (often named 'light-modules') of a Magnolia instance. 

Import the content in the `_dev/content-to-import` into Magnolia. It includes sample 3d files which are imported into the Assets app. And it includes an item in the '3d-models' and a page that uses it in the Pages app.

To add new models:
* Import model files in the assets app.
* Create an item in the '3d-models' app which links the assets together.
* Use the 'augmentedReality' component on a page.



## Information on Magnolia CMS

This directory is a Magnolia 'light module'.
https://documentation.magnolia-cms.com


## License

MIT

Model by amanmelle https://sketchfab.com/amanmelle
Licensed with CC BY 4.0 (attribution) - https://creativecommons.org/licenses/by/4.0/

Shared on Sketchfab at https://sketchfab.com/3d-models/chest-7f8e0b88413d44328fdf8e0d2bf08550

We express many thanks to amanmelle for sharing this nice model!

## Notes
We used this to convert the GLTF directory to a GLB file: https://glb-packer.glitch.me/

## Contributors

* Magnolia
* Christopher Zimmermann
* Bartosz Staryga
