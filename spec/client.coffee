jscov = require 'jscov'
should = require 'should'
lockeClient = require(jscov.cover('..', 'lib', 'client'))
jsonrpc = require 'jsonrpc-http-client-node'

describe 'lockeClient', ->

  it 'fails given the wrong password', (done) ->
    client = lockeClient.construct {
      jsonrpcClient: jsonrpc.construct({ endpoint: 'http://locke.herokuapp.com' })
    }

    client.authPassword 'moodapp', 'jakob.mattsson+0@gmail.com', 'wrong-password', 864000, (err, data) ->
      err.should.eql new Error()
      err.message.should.eql 'Incorrect password'
      done()
