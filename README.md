

[![GitHub release](https://img.shields.io/github/release/LucFabresse/PharoWeb.svg)](https://github.com/LucFabresse/PharoWeb/releases/latest)
[![Build Status](https://travis-ci.com/LucFabresse/PharoWeb.svg?branch=master)](https://travis-ci.com/github/LucFabresse/PharoWeb)
[![Pharo 8.0](https://img.shields.io/badge/Pharo-8.0-informational)](https://github.com/LucFabresse/PharoWeb/releases/download/continuous/PharoWeb-8.0.zip)

# PharoWeb

This project builds a Pharo image with Web development libraries and tools.

This is the Pharo image to use for following the [Pharo MOOC](https://mooc.pharo.org).
It includes several frameworks and libraries related to Web development.

## Manual Loading

```smalltalk
Metacello new
   baseline:'PharoWeb';
   repository: 'github://LucFabresse/PharoWeb/src';
   onConflict: [ :ex | ex useLoaded ];
   load
 ```
