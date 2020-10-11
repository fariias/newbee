class FeedResponse {
  int starredCount;
  List<Feed> feeds;
  int newestItemId;

  FeedResponse({this.starredCount, this.feeds, this.newestItemId});

  FeedResponse.fromJson(Map<String, dynamic> json) {
    starredCount = json['starredCount'];
    if (json['feeds'] != null) {
      feeds = new List<Feed>();
      json['feeds'].forEach((v) {
        feeds.add(new Feed.fromJson(v));
      });
    }
    newestItemId = json['newestItemId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['starredCount'] = this.starredCount;
    if (this.feeds != null) {
      data['feeds'] = this.feeds.map((v) => v.toJson()).toList();
    }
    data['newestItemId'] = this.newestItemId;
    return data;
  }
}

class Feed {
  int id;
  String url;
  String title;
  String faviconLink;
  int added;
  int folderId;
  int unreadCount;
  int ordering;
  String link;
  bool pinned;
  int updateErrorCount;
  Null lastUpdateError;
  List<Null> items;

  Feed(
      {this.id,
      this.url,
      this.title,
      this.faviconLink,
      this.added,
      this.folderId,
      this.unreadCount,
      this.ordering,
      this.link,
      this.pinned,
      this.updateErrorCount,
      this.lastUpdateError,
      this.items});

  Feed.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
    faviconLink = json['faviconLink'];
    added = json['added'];
    folderId = json['folderId'];
    unreadCount = json['unreadCount'];
    ordering = json['ordering'];
    link = json['link'];
    pinned = json['pinned'];
    updateErrorCount = json['updateErrorCount'];
    lastUpdateError = json['lastUpdateError'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['title'] = this.title;
    data['faviconLink'] = this.faviconLink;
    data['added'] = this.added;
    data['folderId'] = this.folderId;
    data['unreadCount'] = this.unreadCount;
    data['ordering'] = this.ordering;
    data['link'] = this.link;
    data['pinned'] = this.pinned;
    data['updateErrorCount'] = this.updateErrorCount;
    data['lastUpdateError'] = this.lastUpdateError;

    return data;
  }
}
