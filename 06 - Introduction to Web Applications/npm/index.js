const fetch = require('isomorphic-fetch');

// The Dog API Documentation: https://docs.thedogapi.com
let baseDogAPIUrl = 'https://api.thedogapi.com/v1/images/search'
const breed = process.argv[2];

let url = baseDogAPIUrl;
if (breed) {
  url = `${url}?breed_ids=${breed}`
}

fetch(url)
.then(data => data.json())
.then(dogsArray => {
  dogsArray.map(dog => {
    console.log('Here is the dog url! :', dog.url)
  })
})
.catch(err => {
  console.log('there was an error!', err)
})
