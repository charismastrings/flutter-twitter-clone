import 'package:flutter/material.dart';
import 'package:twitter_clone/models/post.dart';
import 'package:twitter_clone/models/user.dart';
import 'package:twitter_clone/services/database/database_service.dart';

class DatabaseProvider extends ChangeNotifier {
  // get db & auth service

  final _db = DatabaseService();

  // get user profile given uid
  Future<UserProfile?> userProfile(String uid) => _db.getUserFromFirebase(uid);

  // update user bio
  Future<void> updateBio(String bio) => _db.updateUserBioFirebase(bio);

  // POST
  // local list of post
  List<Post> _allPosts = [];
  // get posts
  List<Post> get allPosts => _allPosts;
  // post message
  Future<void> postMessage(String message) async {
    // post message in Firebase
    await _db.postMessageInFirebase(message);

    // reload data from Firebase
    loadAllPosts();
  }

  // fetch all posts
  Future<void> loadAllPosts() async {
    // get all posts from Firebase
    final allPosts = await _db.getAllPostsFromFirebase();
    // update local data
    _allPosts = allPosts;
    // update UI
    notifyListeners();
  }

  // filter and return posts given uid
  List<Post> filterUserPosts(String uid) {
    return _allPosts.where((post) => post.uid == uid).toList();
  }
}
