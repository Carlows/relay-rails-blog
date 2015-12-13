### WIP: Blog application powered by Rails, react, graphql and Relay.

This blog is an exploration excerise to understand two new technologies - GraphQL and Relay. We are using standard rails application together with npm for handling front-end dependencies.

It's a work in progress and this repository will update as we move further with this application. The intention is to explore the integration to stage where we can get a clear understanding about these two new technologies and how they might fit in a real world application and framework.

### Status

**Currently**, the application only supports reading data from server. No implementations has been made in regards to updates or writes.

#### Current features
* Lists posts
* Lists comments of the posts
* Show author info, votes and comments count
* Live Query editor to run graphql queries

### Demo Links
* [Demo blog](https://relay-rails-blog.herokuapp.com/)
* [GraphiQL query editor](https://relay-rails-blog.herokuapp.com/editor)


### Resources

* [Facebook Relay](https://facebook.github.io/relay/): Official relay docs
* [GraphQL](http://facebook.github.io/graphql/): Official GraphQL spec
* [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) & [graphql-relay-ruby](https://github.com/rmosolgo/graphql-relay-ruby): For defining GraphQL schema and Relay implementation in Ruby GraphQL classes, and getting Rails to speak GraphQL.
* ```browserify-rails```: Command-line options required to do transpilation, e.g., —plugin, etc.

### TODOs

* Add relay mutations to edit/update/destroy data state
* Add user session management and authorization
* Explore Relay subscriptions to hook it with ActionCable [http://graphql.org/blog/subscriptions-in-graphql-and-relay/](http://graphql.org/blog/subscriptions-in-graphql-and-relay/)
* Add a react native app
* Probably more...

### Running locally
To run the application, please just clone the repo and run it like so:

```
git clone git@github.com:gauravtiwari/relay-rails-blog.git
cd relay-rails-blog
npm install
./start (from terminal). If you get permission error, just do chmod 777 start
```