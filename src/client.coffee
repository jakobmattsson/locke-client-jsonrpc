nameify = require 'nameify'

exports.construct = ({ jsonrpcClient }) ->
  nameify.byPosition jsonrpcClient,
    createUser: ['app', 'email', 'password']
    authPassword: ['app', 'email', 'password', 'secondsToLive']
    authToken: ['app', 'email', 'token']
    createApp: ['email', 'token', 'app']
    getApps: ['email', 'token']
    closeSession: ['app', 'email', 'token']
    closeSessions: ['app', 'email', 'password']
    deleteUser: ['app', 'email', 'password']
    updatePassword: ['app', 'email', 'password', 'newPassword']
    deleteApp: ['email', 'password', 'app']
    sendPasswordReset: ['app', 'email']
    resetPassword: ['app', 'email', 'resetToken', 'newPassword']
    sendValidation: ['app', 'email']
    validateUser: ['app', 'email', 'validationToken']

# locke = lockeClient.construct
#   jsonrpcClient: json.construct
#     endpoint: 'http://locke.herokuapp.com'
#     timeout: 2000
