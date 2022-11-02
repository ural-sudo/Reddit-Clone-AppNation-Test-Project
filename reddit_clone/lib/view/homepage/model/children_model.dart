import 'package:reddit_clone/view/homepage/model/empty_model.dart';

class Children {
	String? childKind;
	ChildData? childData;

	Children({this.childKind, this.childData});

	Children.fromJson(Map<String, dynamic> json) {
		childKind = json['kind'];
		childData = json['data'] != null ? ChildData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data =  Map<String, dynamic>();
		data['childKind'] = childKind ;
		if (childData != null) {
      data['childData'] = childData!.toJson();
    }
		return data;
	}
}

class ChildData {
	String? approvedAtUtc;
	String? subreddit;
	String? selftext;
	String? authorFullname;
	bool? saved;
	String? modReasonTitle;
	int? gilded;
	bool? clicked;
	String? title;
	List<EmptyModel>? linkFlairRichtext;
	String? subredditNamePrefixed;
	bool? hidden;
	int? pwls;
	String? linkFlairCssClass;
	int? downs;
	int? thumbnailHeight;
	String? topAwardedType;
	bool? hideScore;
	String? name;
	bool? quarantine;
	String? linkFlairTextColor;
	double? upvoteRatio;
	String? authorFlairBackgroundColor;
	String? subredditType;
	int? ups;
	int? totalAwardsReceived;
	MediaEmbed? mediaEmbed;
	int? thumbnailWidth;
	String? authorFlairTemplateId;
	bool? isOriginalContent;
	List<EmptyModel>? userReports;
	EmptyModel? secureMedia;
	bool? isRedditMediaDomain;
	bool? isMeta;
	String? category;
	MediaEmbed? secureMediaEmbed;
	String? linkFlairText;
	bool? canModPost;
	int? score;
	String? approvedBy;
	bool? isCreatedFromAdsUi;
	bool? authorPremium;
	String? thumbnail;
	bool? edited;
	String? authorFlairCssClass;
	List<EmptyModel>? authorFlairRichtext;
	MediaEmbed? gildings;
	String? contentCategories;
	bool? isSelf;
	String? modNote;
	double? created;
	String? linkFlairType;
	int? wls;
	String? removedByCategory;
	String? bannedBy;
	String? authorFlairType;
	String? domain;
	bool? allowLiveComments;
	String? selftextHtml;
	int? likes;
	String? suggestedSort;
	String? bannedAtUtc;
	int? viewCount;
	bool? archived;
	bool? noFollow;
	bool? isCrosspostable;
	bool? pinned;
	bool? over18;
	List<EmptyModel>? allAwardings;
	List<EmptyModel>? awarders;
	bool? mediaOnly;
	String? linkFlairTemplateId;
	bool? canGild;
	bool? spoiler;
	bool? locked;
	String? authorFlairText;
	List<EmptyModel>? treatmentTags;
	bool? visited;
	String? removedBy;
	String? numReports;
	String? distinguished;
	String? subredditId;
	bool? authorIsBlocked;
	String? modReasonBy;
	String? removalReason;
	String? linkFlairBackgroundColor;
	String? id;
	bool? isRobotIndexable;
	String? reportReasons;
	String? author;
	String? discussionType;
	int? numComments;
	bool? sendReplies;
	String? whitelistStatus;
	bool? contestMode;
	List<EmptyModel>? modReports;
	bool? authorPatreonFlair;
	String? authorFlairTextColor;
	String? permalink;
	String? parentWhitelistStatus;
	bool? stickied;
	String? url;
	int? subredditSubscribers;
	double? createdUtc;
	int? numCrossposts;
	EmptyModel? media;
	bool? isVideo;

	ChildData({this.approvedAtUtc, this.subreddit, this.selftext, this.authorFullname, this.saved, this.modReasonTitle, this.gilded, this.clicked, this.title, this.linkFlairRichtext, this.subredditNamePrefixed, this.hidden, this.pwls, this.linkFlairCssClass, this.downs, this.thumbnailHeight, this.topAwardedType, this.hideScore, this.name, this.quarantine, this.linkFlairTextColor, this.upvoteRatio, this.authorFlairBackgroundColor, this.subredditType, this.ups, this.totalAwardsReceived, this.mediaEmbed, this.thumbnailWidth, this.authorFlairTemplateId, this.isOriginalContent, this.userReports, this.secureMedia, this.isRedditMediaDomain, this.isMeta, this.category, this.secureMediaEmbed, this.linkFlairText, this.canModPost, this.score, this.approvedBy, this.isCreatedFromAdsUi, this.authorPremium, this.thumbnail, this.edited, this.authorFlairCssClass, this.authorFlairRichtext, this.gildings, this.contentCategories, this.isSelf, this.modNote, this.created, this.linkFlairType, this.wls, this.removedByCategory, this.bannedBy, this.authorFlairType, this.domain, this.allowLiveComments, this.selftextHtml, this.likes, this.suggestedSort, this.bannedAtUtc, this.viewCount, this.archived, this.noFollow, this.isCrosspostable, this.pinned, this.over18, this.allAwardings, this.awarders, this.mediaOnly, this.linkFlairTemplateId, this.canGild, this.spoiler, this.locked, this.authorFlairText, this.treatmentTags, this.visited, this.removedBy, this.numReports, this.distinguished, this.subredditId, this.authorIsBlocked, this.modReasonBy, this.removalReason, this.linkFlairBackgroundColor, this.id, this.isRobotIndexable, this.reportReasons, this.author, this.discussionType, this.numComments, this.sendReplies, this.whitelistStatus, this.contestMode, this.modReports, this.authorPatreonFlair, this.authorFlairTextColor, this.permalink, this.parentWhitelistStatus, this.stickied, this.url, this.subredditSubscribers, this.createdUtc, this.numCrossposts, this.media, this.isVideo});

	ChildData.fromJson(Map<String, dynamic> json) {
		approvedAtUtc = json['approved_at_utc'] ?? "null";
		subreddit = json['subreddit'];
		selftext = json['selftext'] ;
		authorFullname = json['author_fullname'];
		saved = json['saved'];
		modReasonTitle = json['mod_reason_title'] ?? "null";
		gilded = json['gilded'];
		clicked = json['clicked'];
		title = json['title'];
		if (json['link_flair_richtext'] != null) {
			linkFlairRichtext = <EmptyModel>[];
			json['link_flair_richtext'].forEach((v) {
         linkFlairRichtext!.add(EmptyModel.fromJson(v)); 
      });
		}
		subredditNamePrefixed = json['subreddit_name_prefixed'];
		hidden = json['hidden'];
		pwls = json['pwls'];
		linkFlairCssClass = json['link_flair_css_class'];
		downs = json['downs'];
		thumbnailHeight = json['thumbnail_height'] ?? 0;
		topAwardedType = json['top_awarded_type'] ?? "";
		hideScore = json['hide_score'];
		name = json['name'];
		quarantine = json['quarantine'];
		linkFlairTextColor = json['link_flair_text_color'];
		upvoteRatio = json['upvote_ratio'];
		authorFlairBackgroundColor = json['author_flair_background_color'];
		subredditType = json['subreddit_type'];
		ups = json['ups'];
		totalAwardsReceived = json['total_awards_received'];
		mediaEmbed = json['media_embed'] != null ?  MediaEmbed.fromJson(json['media_embed']) : null;
		thumbnailWidth = json['thumbnail_width'] ?? 0;
		authorFlairTemplateId = json['author_flair_template_id'] ?? "";
		isOriginalContent = json['is_original_content'];
		if (json['user_reports'] != null) {
			userReports = <EmptyModel>[];
			json['user_reports'].forEach((v) {
         userReports!.add( EmptyModel.fromJson(v)); 
      });
		}
		secureMedia = json['secure_media'] != null ? EmptyModel.fromJson(json['secure_media']) : null;
		isRedditMediaDomain = json['is_reddit_media_domain'];
		isMeta = json['is_meta'];
		category = json['category'] ?? "";
		secureMediaEmbed = json['secure_media_embed'] != null ?  MediaEmbed.fromJson(json['secure_media_embed']) : null;
		linkFlairText = json['link_flair_text'];
		canModPost = json['can_mod_post'];
		score = json['score'];
		approvedBy = json['approved_by'] ?? "";
		isCreatedFromAdsUi = json['is_created_from_ads_ui'];
		authorPremium = json['author_premium'];
		thumbnail = json['thumbnail'];
		//edited = json['edited'] ?? false;
		authorFlairCssClass = json['author_flair_css_class'];
		if (json['author_flair_richtext'] != null) {
			authorFlairRichtext = <EmptyModel>[];
			json['author_flair_richtext'].forEach((v) { 
        authorFlairRichtext!.add( EmptyModel.fromJson(v)); 
      });
		}
		gildings = json['gildings'] != null ?  MediaEmbed.fromJson(json['gildings']) : null;
		contentCategories = json['content_categories'] ?? "";
		isSelf = json['is_self'];
		modNote = json['mod_note'] ?? "";
		created = json['created'];
		linkFlairType = json['link_flair_type'];
		wls = json['wls'];
		removedByCategory = json['removed_by_category'] ?? "";
		bannedBy = json['banned_by'] ?? "";
		authorFlairType = json['author_flair_type'];
		domain = json['domain'];
		allowLiveComments = json['allow_live_comments'];
		selftextHtml = json['selftext_html'];
		likes = json['likes'] ?? 0;
		suggestedSort = json['suggested_sort'] ?? "";
		bannedAtUtc = json['banned_at_utc'] ?? "";
		viewCount = json['view_count'] ?? 0;
		archived = json['archived'];
		noFollow = json['no_follow'];
		isCrosspostable = json['is_crosspostable'];
		pinned = json['pinned'];
		over18 = json['over_18'];
		if (json['all_awardings'] != null) {
			allAwardings = <EmptyModel>[];
			json['all_awardings'].forEach((v) { allAwardings!.add( EmptyModel.fromJson(v)); });
		}
		if (json['awarders'] != null) {
			awarders = <EmptyModel>[];
			json['awarders'].forEach((v) { awarders!.add(EmptyModel.fromJson(v)); });
		}
		mediaOnly = json['media_only'];
		linkFlairTemplateId = json['link_flair_template_id'];
		canGild = json['can_gild'];
		spoiler = json['spoiler'];
		locked = json['locked'];
		authorFlairText = json['author_flair_text'];
		if (json['treatment_tags'] != null) {
			treatmentTags = <EmptyModel>[];
			json['treatment_tags'].forEach((v) { treatmentTags!.add( EmptyModel.fromJson(v)); });
		}
		visited = json['visited'];
		removedBy = json['removed_by'] ?? "";
		numReports = json['num_reports'] ?? "";
		distinguished = json['distinguished'] ?? "";
		subredditId = json['subreddit_id'];
		authorIsBlocked = json['author_is_blocked'];
		modReasonBy = json['mod_reason_by'] ?? "";
		removalReason = json['removal_reason'] ?? "";
		linkFlairBackgroundColor = json['link_flair_background_color'];
		id = json['id'];
		isRobotIndexable = json['is_robot_indexable'];
		reportReasons = json['report_reasons'] ?? "";
		author = json['author'];
		discussionType = json['discussion_type'] ?? "";
		numComments = json['num_comments'];
		sendReplies = json['send_replies'];
		whitelistStatus = json['whitelist_status'];
		contestMode = json['contest_mode'];
		if (json['mod_reports'] != null) {
			modReports = <EmptyModel>[];
			json['mod_reports'].forEach((v) { modReports!.add( EmptyModel.fromJson(v)); });
		}
		authorPatreonFlair = json['author_patreon_flair'];
		authorFlairTextColor = json['author_flair_text_color'];
		permalink = json['permalink'];
		parentWhitelistStatus = json['parent_whitelist_status'];
		stickied = json['stickied'];
		url = json['url'];
		subredditSubscribers = json['subreddit_subscribers'];
		createdUtc = json['created_utc'];
		numCrossposts = json['num_crossposts'];
		media = json['media'] != null ? EmptyModel.fromJson(json['media']) : null;
		isVideo = json['is_video'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['approved_at_utc'] = this.approvedAtUtc;
		data['subreddit'] = this.subreddit;
		data['selftext'] = this.selftext;
		data['author_fullname'] = this.authorFullname;
		data['saved'] = this.saved;
		data['mod_reason_title'] = this.modReasonTitle;
		data['gilded'] = this.gilded;
		data['clicked'] = this.clicked;
		data['title'] = this.title;
		if (this.linkFlairRichtext != null) {
      data['link_flair_richtext'] = this.linkFlairRichtext!.map((v) => v.toJson()).toList();
    }
		data['subreddit_name_prefixed'] = this.subredditNamePrefixed;
		data['hidden'] = this.hidden;
		data['pwls'] = this.pwls;
		data['link_flair_css_class'] = this.linkFlairCssClass;
		data['downs'] = this.downs;
		data['thumbnail_height'] = this.thumbnailHeight;
		data['top_awarded_type'] = this.topAwardedType;
		data['hide_score'] = this.hideScore;
		data['name'] = this.name;
		data['quarantine'] = this.quarantine;
		data['link_flair_text_color'] = this.linkFlairTextColor;
		data['upvote_ratio'] = this.upvoteRatio;
		data['author_flair_background_color'] = this.authorFlairBackgroundColor;
		data['subreddit_type'] = this.subredditType;
		data['ups'] = this.ups;
		data['total_awards_received'] = this.totalAwardsReceived;
		if (this.mediaEmbed != null) {
      data['media_embed'] = this.mediaEmbed!.toJson();
    }
		data['thumbnail_width'] = this.thumbnailWidth;
		data['author_flair_template_id'] = this.authorFlairTemplateId;
		data['is_original_content'] = this.isOriginalContent;
		if (this.userReports != null) {
      data['user_reports'] = this.userReports!.map((v) => v.toJson()).toList();
    }
		data['secure_media'] = this.secureMedia;
		data['is_reddit_media_domain'] = this.isRedditMediaDomain;
		data['is_meta'] = this.isMeta;
		data['category'] = this.category;
		if (this.secureMediaEmbed != null) {
      data['secure_media_embed'] = this.secureMediaEmbed!.toJson();
    }
		data['link_flair_text'] = this.linkFlairText;
		data['can_mod_post'] = this.canModPost;
		data['score'] = this.score;
		data['approved_by'] = this.approvedBy;
		data['is_created_from_ads_ui'] = this.isCreatedFromAdsUi;
		data['author_premium'] = this.authorPremium;
		data['thumbnail'] = this.thumbnail;
		data['edited'] = this.edited;
		data['author_flair_css_class'] = this.authorFlairCssClass;
		if (this.authorFlairRichtext != null) {
      data['author_flair_richtext'] = this.authorFlairRichtext!.map((v) => v.toJson()).toList();
    }
		if (this.gildings != null) {
      data['gildings'] = this.gildings!.toJson();
    }
		data['content_categories'] = this.contentCategories;
		data['is_self'] = this.isSelf;
		data['mod_note'] = this.modNote;
		data['created'] = this.created;
		data['link_flair_type'] = this.linkFlairType;
		data['wls'] = this.wls;
		data['removed_by_category'] = this.removedByCategory;
		data['banned_by'] = this.bannedBy;
		data['author_flair_type'] = this.authorFlairType;
		data['domain'] = this.domain;
		data['allow_live_comments'] = this.allowLiveComments;
		data['selftext_html'] = this.selftextHtml;
		data['likes'] = this.likes;
		data['suggested_sort'] = this.suggestedSort;
		data['banned_at_utc'] = this.bannedAtUtc;
		data['view_count'] = this.viewCount;
		data['archived'] = this.archived;
		data['no_follow'] = this.noFollow;
		data['is_crosspostable'] = this.isCrosspostable;
		data['pinned'] = this.pinned;
		data['over_18'] = this.over18;
		if (this.allAwardings != null) {
      data['all_awardings'] = this.allAwardings!.map((v) => v.toJson()).toList();
    }
		if (this.awarders != null) {
      data['awarders'] = this.awarders!.map((v) => v.toJson()).toList();
    }
		data['media_only'] = this.mediaOnly;
		data['link_flair_template_id'] = this.linkFlairTemplateId;
		data['can_gild'] = this.canGild;
		data['spoiler'] = this.spoiler;
		data['locked'] = this.locked;
		data['author_flair_text'] = this.authorFlairText;
		if (this.treatmentTags != null) {
      data['treatment_tags'] = this.treatmentTags!.map((v) => v.toJson()).toList();
    }
		data['visited'] = this.visited;
		data['removed_by'] = this.removedBy;
		data['num_reports'] = this.numReports;
		data['distinguished'] = this.distinguished;
		data['subreddit_id'] = this.subredditId;
		data['author_is_blocked'] = this.authorIsBlocked;
		data['mod_reason_by'] = this.modReasonBy;
		data['removal_reason'] = this.removalReason;
		data['link_flair_background_color'] = this.linkFlairBackgroundColor;
		data['id'] = this.id;
		data['is_robot_indexable'] = this.isRobotIndexable;
		data['report_reasons'] = this.reportReasons;
		data['author'] = this.author;
		data['discussion_type'] = this.discussionType;
		data['num_comments'] = this.numComments;
		data['send_replies'] = this.sendReplies;
		data['whitelist_status'] = this.whitelistStatus;
		data['contest_mode'] = this.contestMode;
		if (this.modReports != null) {
      data['mod_reports'] = this.modReports!.map((v) => v.toJson()).toList();
    }
		data['author_patreon_flair'] = this.authorPatreonFlair;
		data['author_flair_text_color'] = this.authorFlairTextColor;
		data['permalink'] = this.permalink;
		data['parent_whitelist_status'] = this.parentWhitelistStatus;
		data['stickied'] = this.stickied;
		data['url'] = this.url;
		data['subreddit_subscribers'] = this.subredditSubscribers;
		data['created_utc'] = this.createdUtc;
		data['num_crossposts'] = this.numCrossposts;
		data['media'] = this.media;
		data['is_video'] = this.isVideo;
		return data;
	}
}

class MediaEmbed {


	MediaEmbed();

	MediaEmbed.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data =  Map<String, dynamic>();
		return data;
	}
}