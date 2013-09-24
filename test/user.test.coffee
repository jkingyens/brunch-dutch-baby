should = chai.should()

describe 'user model', (done) ->

  it 'should be true', (done) ->

    user = require 'models/user'
    newUser = new user()
    newUser.should.have.property 'email', 'your@email.com'
    done()