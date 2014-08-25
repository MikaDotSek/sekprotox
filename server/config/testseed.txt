/**
 * Populate DB with sample data on server start
 * to disable, edit config/environment/index.js, and set `seedDB: false`
 */

'use strict';

var Thing = require('../api/thing/thing.model');
var User = require('../api/user/user.model');

Thing.find({}).remove(function() {
  Thing.create({
    name : 'Sek & Grey ',
    toimiala : 'MARKKINOINTITOIMISTO',
    osoite : 'Annankatu 28, 00100 Helsinki',
    puhelin : '+358 9 695 71',
    emails : 'etunimi.sukunimi@sek.fi',
    kontakti : 'Topi',
    titteli : 'Toimitusjohtaja',
    kontaktipuh : '+358 40 167 6300'
  }, {
    name : 'Sek Loyal ',
    toimiala : 'ASIAKKUUSTOIMISTO',
    osoite : 'Annankatu 28, 00100 Helsinki',
    puhelin : '+358 9 695 71',
    emails : 'etunimi.sukunimi@sek.fi',
    kontakti : 'Topi',
    titteli : 'Toimitusjohtaja',
    kontaktipuh : '+358 40 167 6300'
  }, {
    name : 'Sek Public',
    toimiala : 'VIESTINTÄTOIMISTO',
    osoite : 'Annankatu 28, 00100 Helsinki',
    puhelin : '+358 9 695 71',
    emails : 'etunimi.sukunimi@sek.fi',
    kontakti : 'Topi',
    titteli : 'Toimitusjohtaja',
    kontaktipuh : '+358 40 167 6300'
  }, {
    name : 'Sek Point',
    toimiala : 'DIGITAALISEN JA PAINETUN MATERIAALIN TUOTANTOTOIMISTO',
    osoite : 'Annankatu 28, 00100 Helsinki',
    puhelin : '+358 9 695 71',
    emails : 'etunimi.sukunimi@sek.fi',
    kontakti : 'Topi',
    titteli : 'Toimitusjohtaja',
    kontaktipuh : '+358 40 167 6300'
  }, {
    name : 'PERFECTO ',
    toimiala : 'KONSULTOINTI- JA VALMENNUSTOIMISTO',
    osoite : 'Annankatu 28, 00100 Helsinki',
    puhelin : '+358 9 695 71',
    emails : 'etunimi.sukunimi@sek.fi',
    kontakti : 'Topi',
    titteli : 'Toimitusjohtaja',
    kontaktipuh : '+358 40 167 6300'
  });
});

User.find({}).remove(function() {
  User.create({
    provider: 'local',
    name: 'Test User',
    email: 'test@test.com',
    password: 'test'
  }, {
    provider: 'local',
    role: 'admin',
    name: 'Admin',
    email: 'admin@admin.com',
    password: 'admin'
  }, function() {
      console.log('finished populating users');
    }
  );
});