// function ajaxRequest(method, url) {
//   var request = new XMLHttpRequest();
//   request.open(method, url);
//   request.send();
//   return request;
// }

// function successfulRequest(request) {
//   return request.readyState === 4 && request.statusText === 'OK';
// }


function getRegions(e) {
  var regions = [];
  // var request = ajaxRequest('GET', 'https://restcountries.eu/rest/v1/all');
  $.ajax({
    type: 'GET',
    url: 'http://restcountries.eu/rest/v1/all'
  }).done(function(response) {
    console.log(response);
      var regionSelect = $('#region-select');
      regionSelect.empty();
      $.each(response, function(index, item) {
        console.log(item);
        if($.inArray(item.region, regions) === -1 && item.region.length >= 1) {
          regions.push(item.region)
          regionSelect.append('<option value="' + item.region + '">' +item.region + '</option>')
        }
      })
    })
  }



function getCountries(e) {
  var regionName = (this.value);
  // var request = ajaxRequest('GET', 'http://restcountries.eu/rest/v1/region/' + regionName);
    $.ajax({
    type: 'GET',
    url: 'http://restcountries.eu/rest/v1/region/' + regionName
  }).done(function(response) {
    console.log(response);
      var countrySelect = $('country-select');
      countrySelect.empty();
      $.each(response, function(index, item) {
        console.log(item);
        countries.push(item.country)
        countrySelect.append('<option value="' + item.country + '">' +item.country + '</option>')
      })
    })
  }



//   request.onreadystatechange = function() {
//     if(successfulRequest(request)) {
//       regionSelect.innerHTML = '';

//       var response = JSON.parse(request.response);

//       for(var i=0; i<response.length; i++) {
//         if(regions.indexOf(response[i].region) === -1 && response[i].region.length >= 1) { 
//         regions.push(response[i].region);
//         var optionRegion = document.createElement('option');
//         optionRegion.setAttribute('value', response[i].region);
//         optionRegion.innerHTML = response[i].region;
//         regionSelect.appendChild(optionRegion);
//         }
//       }
//       var optionDefault = document.createElement('option');
//       optionDefault.setAttribute('value', 'default');
//       optionDefault.innerHTML = '-- Select your region --';
//       regionSelect.insertBefore(optionDefault, regionSelect.firstChild);
//     }
//   }



// function getCountries(e) {
//   var regionName = (this.value);
//   // var request = ajaxRequest('GET', 'http://restcountries.eu/rest/v1/region/' + regionName);
//     $.ajax({
//     type: 'GET',
//     url: 'http://restcountries.eu/rest/v1/region/' + regionName
//   }).done(function(response) {
//   request.onreadystatechange = function() {
//     if(successfulRequest(request)) {
//       countrySelect.innerHTML = '';
//       var response = JSON.parse(request.response);

//       for (var i=0; i<response.length; i++) {
//         var optionCountry = document.createElement('option');
//         optionCountry.setAttribute('value', response[i].name);
//         optionCountry.innerHTML = response[i].name;
//         countrySelect.appendChild(optionCountry);
//       }
    
//     var optionDefault = document.createElement('option');
//     optionDefault.setAttribute('value', 'default');
//     optionDefault.innerHTML = '-- Select your country --';
//     countrySelect.insertBefore(optionDefault, countrySelect.firstChild);
//   }
// }
// });
// }

// function getCountryData(e) {
//   var countryName = this.value;
//   // var request = ajaxRequest('GET', 'https://restcountries.eu/rest/v1/name/' + countryName);
//   $.ajax({
//       type: 'GET',
//       url: 'https://restcountries.eu/rest/v1/name/' + countryName
//     }).done(function(response) {
//   request.onreadystatechange = function() {
//     if(successfulRequest(request)) {
//       var response = JSON.parse(request.response);
//       name = response[0].name;
//       capital = response[0].capital;
//       population = response[0].population;
//       region = response[0].region;
//       results.innerHTML = capital + " is the capital of " + name + ". The population is " + population + " and it is located in " + region;
//     }
//   }
// }); 
// }


var getRegionsButton;
var regionSelect;
var countrySelect;
var results;

document.addEventListener('DOMContentLoaded', function() {
  console.log("Hello!");

  // define our variables
  getRegionsButton = document.getElementById('get-regions');
  regionSelect = document.getElementById('region-select');
  countrySelect = document.getElementById('country-select');
  results = document.getElementById('results');

  // add event listeners
  getRegionsButton.addEventListener('click', getRegions);
  regionSelect.addEventListener('change', getCountries);
  // countrySelect.addEventListener('change', getCountryData);
});

