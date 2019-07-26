# Devise + Geocoder Example Rails App

> I don't personally recommend using this solution. It was built for situations where Devise isn't storing a real IP address. It adds the request object to the current Thread so that the User model can access it and leverage it to store the IP address for geo coding purposes. So be warned.
