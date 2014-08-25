'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ThingSchema = new Schema({
  name: String,
  info: String,
  toimiala: String,
  osoite : String,
  puhelin : String,
  emails : String,
  kontakti : String,
  titteli : String,
  kontaktipuh : String,
  active: Boolean
});

module.exports = mongoose.model('Thing', ThingSchema);