Template.project_index.helpers
  my_projects: ->
    Projects.find({userId: Meteor.userId()})
  my_friends_projects: ->
    #TODO probably something like this:
    friendships = Friendships.find(userId: Meteor.userId())
    friend_ids = ['asdf', 'fdsaa']
    Projects.find({userId: {$in:friend_ids}})
  all_projects: ->
    Projects.find()
