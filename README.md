# Chuckwagon

The purpose of this application is to demostrate my skills both in the frontend and the backend and also to show how I work developing a project. The application is going to make a simple call to the [San Francisco's food truck API](https://data.sfgov.org/api/id/rqzj-sfat.json) (SF-API) to fetch some results from it, convert them into structs, and display them into a list. The application also provides an [authentication system](https://hexdocs.pm/phoenix/mix_phx_gen_auth.html) because any decent web-application should have one.

The idea behind adding these 2 features is to demostrate the following:

1. To use a thrid-party API to simplify development and also gain data from the source. I could go for parsing the CVS but users are going to be happier having real-time data instead of static one. The only advantage that I can see if we want to use the CVS is if the SF-API is not available. A better approach could be having a combination of both, first trying to fetch the results from the SF-API and if we got an error on that try, then we could use the CSV to look for results.
2. The authentication system that Phoenix provides tries to add one of the most common features in current web-applications. The decision of adding this features is that any well structured web-application needs to deal with some kind of authentication (and/or authorization) system.

- The general steps that this application is going to implement are:

1. Generate Phoenix project
2. Remove inital boilerplate
3. Add authentication system
4. Add a searching form that the user is going to use to call the SF-API
5. Use the authentication system to display more data when an user is authenticated

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.