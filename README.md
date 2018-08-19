# Terra

```markdown
ter·ra
/ˈterə/
  noun
  1. land or territory.
  2. (in science fiction) the planet earth.
```

## Abstract

This project will serve as a Vagrant box for my portfolio, a GatsbyJS blog, to be hosted on a Linode, orchestrated pipeline with Vagrant and CircleCI. Tested with CypressIO and Jest BDD.

### What is it

In a nutshell, it is a VagrantFile, in addition, a shell script and an Ngnix configuration. It's a box that can be used to automate deployments to ANY environment. It is currently provisioned to deploy to a Linode (Nanode) box.

Gatsby offers other deployment options, none of them really work quite like Vagrant for me.

### How does it work

Our first step was to create an application using `gatsbyJS`. we use `gatsby build` to give us a static HTML directory, bundled with SPA-magic.

Then we create a `VagrantFile` that copies over our `/public` directory to our serving directory for our HTML. We use a regular `ubuntu/trusty64` box. After that we provision the box with `node` and `nginx`. After providing some `Linode API` keys, we create a `Nanode` in the Linode cloud!

### What are the benefits

1. **Continuous Delivery**: Vagrant maintains a development environment, as well as pushed and manages our code!
2. **Continuous Integration**: CircleCI lets us use some really neat WebHooks that run a build and test in our Vagrant, every time we push to master.
3. **Great structure for a tested React App**: Using CypressIO, JEST and Gatsby, we piece together a test SPA portfolio, in BDD fashion.
4. **Some shell scripts included**: I put together a bash_profile for our vagrant user, that is built to optimize your Gatsby, Linux experience.

### Install Dependencies

See [dependencies](./wiki/Dependencies).

### Getting Started

See [getting started](./wiki/Getting-Started).
