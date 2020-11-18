void main() {
  PostDataBaise dp = PostDataBaise();
  List newPost = List();
  newPost.add('original post');
  newPost.add('#Tag Post');
  newPost.add('@Mintion Post');

  Post postobj = Post();
  for(var post in newPost) {
    if(post.startsWith('#')) {
      postobj = TagPost();
    } else if(post.startsWith('@')) {
      postobj = MintionPost();
    } else {
      postobj = Post();  
    }
    print(postobj.createPost(dp, post));
  }
}

class PostDataBaise {
  String add(String post) {
    return 'original post = $post';
  }

  String addTagPost(String post) {
    return 'Tag post = $post';
  }

  String addMintionPost(String post) {
    return 'Mintion post = $post'; 
  }
}

class Post {
  String createPost(PostDataBaise dp, String post) {
    return dp.add(post);  
  }
}

class TagPost extends Post {
  String createPost(PostDataBaise dp, String post) {
    return dp.addTagPost(post);  
  }
}

class MintionPost extends Post {  
  String createPost(PostDataBaise dp, String post) {
    return dp.addMintionPost(post);  
  }
}
