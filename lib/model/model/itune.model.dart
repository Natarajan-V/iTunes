class ItuneModel {
  int? resultCount;
  List<Tune>? results;

  ItuneModel({this.resultCount, this.results});

  ItuneModel.fromJson(Map<String, dynamic> json) {
    resultCount = json['resultCount'];
    if (json['results'] != null) {
      results = <Tune>[];
      json['results'].forEach((v) {
        results!.add(Tune.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resultCount'] = resultCount;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tune {
  String? wrapperType;
  int? artistId;
  int? collectionId;
  String? artistName;
  String? collectionName;
  String? collectionCensoredName;
  String? artistViewUrl;
  String? collectionViewUrl;
  String? artworkUrl60;
  String? artworkUrl100;
  double? collectionPrice;
  String? collectionExplicitness;
  int? trackCount;
  String? country;
  String? currency;
  String? releaseDate;
  String? primaryGenreName;
  String? previewUrl;
  String? description;
  String? copyright;
  String? kind;
  int? trackId;
  String? trackName;
  String? trackCensoredName;
  String? trackViewUrl;
  String? artworkUrl30;
  double? trackPrice;
  double? collectionHdPrice;
  double? trackHdPrice;
  String? trackExplicitness;
  int? discCount;
  int? discNumber;
  int? trackNumber;
  int? trackTimeMillis;
  String? contentAdvisoryRating;
  String? shortDescription;
  String? longDescription;
  int? amgArtistId;
  int? collectionArtistId;
  String? collectionArtistViewUrl;
  bool? hasITunesExtras;
  bool? isStreamable;

  Tune({
    this.wrapperType,
    this.artistId,
    this.collectionId,
    this.artistName,
    this.collectionName,
    this.collectionCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.collectionExplicitness,
    this.trackCount,
    this.country,
    this.currency,
    this.releaseDate,
    this.primaryGenreName,
    this.previewUrl,
    this.description,
    this.copyright,
    this.kind,
    this.trackId,
    this.trackName,
    this.trackCensoredName,
    this.trackViewUrl,
    this.artworkUrl30,
    this.trackPrice,
    this.collectionHdPrice,
    this.trackHdPrice,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackNumber,
    this.trackTimeMillis,
    this.contentAdvisoryRating,
    this.shortDescription,
    this.longDescription,
    this.amgArtistId,
    this.collectionArtistId,
    this.collectionArtistViewUrl,
    this.hasITunesExtras,
    this.isStreamable,
  });

  Tune.fromJson(Map<String, dynamic> json) {
    wrapperType = json['wrapperType'];
    artistId = json['artistId'];
    collectionId = json['collectionId'];
    artistName = json['artistName'];
    collectionName = json['collectionName'];
    collectionCensoredName = json['collectionCensoredName'];
    artistViewUrl = json['artistViewUrl'];
    collectionViewUrl = json['collectionViewUrl'];
    artworkUrl60 = json['artworkUrl60'];
    artworkUrl100 = json['artworkUrl100'];
    collectionPrice = json['collectionPrice'];
    collectionExplicitness = json['collectionExplicitness'];
    trackCount = json['trackCount'];
    country = json['country'];
    currency = json['currency'];
    releaseDate = json['releaseDate'];
    primaryGenreName = json['primaryGenreName'];
    previewUrl = json['previewUrl'];
    description = json['description'];
    copyright = json['copyright'];
    kind = json['kind'];
    trackId = json['trackId'];
    trackName = json['trackName'];
    trackCensoredName = json['trackCensoredName'];
    trackViewUrl = json['trackViewUrl'];
    artworkUrl30 = json['artworkUrl30'];
    trackPrice = json['trackPrice'];
    collectionHdPrice = json['collectionHdPrice'];
    trackHdPrice = json['trackHdPrice'];
    trackExplicitness = json['trackExplicitness'];
    discCount = json['discCount'];
    discNumber = json['discNumber'];
    trackNumber = json['trackNumber'];
    trackTimeMillis = json['trackTimeMillis'];
    contentAdvisoryRating = json['contentAdvisoryRating'];
    shortDescription = json['shortDescription'];
    longDescription = json['longDescription'];
    amgArtistId = json['amgArtistId'];
    collectionArtistId = json['collectionArtistId'];
    collectionArtistViewUrl = json['collectionArtistViewUrl'];
    hasITunesExtras = json['hasITunesExtras'];
    isStreamable = json['isStreamable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['wrapperType'] = wrapperType;
    data['artistId'] = artistId;
    data['collectionId'] = collectionId;
    data['artistName'] = artistName;
    data['collectionName'] = collectionName;
    data['collectionCensoredName'] = collectionCensoredName;
    data['artistViewUrl'] = artistViewUrl;
    data['collectionViewUrl'] = collectionViewUrl;
    data['artworkUrl60'] = artworkUrl60;
    data['artworkUrl100'] = artworkUrl100;
    data['collectionPrice'] = collectionPrice;
    data['collectionExplicitness'] = collectionExplicitness;
    data['trackCount'] = trackCount;
    data['country'] = country;
    data['currency'] = currency;
    data['releaseDate'] = releaseDate;
    data['primaryGenreName'] = primaryGenreName;
    data['previewUrl'] = previewUrl;
    data['description'] = description;
    data['copyright'] = copyright;
    data['kind'] = kind;
    data['trackId'] = trackId;
    data['trackName'] = trackName;
    data['trackCensoredName'] = trackCensoredName;
    data['trackViewUrl'] = trackViewUrl;
    data['artworkUrl30'] = artworkUrl30;
    data['trackPrice'] = trackPrice;
    data['collectionHdPrice'] = collectionHdPrice;
    data['trackHdPrice'] = trackHdPrice;
    data['trackExplicitness'] = trackExplicitness;
    data['discCount'] = discCount;
    data['discNumber'] = discNumber;
    data['trackNumber'] = trackNumber;
    data['trackTimeMillis'] = trackTimeMillis;
    data['contentAdvisoryRating'] = contentAdvisoryRating;
    data['shortDescription'] = shortDescription;
    data['longDescription'] = longDescription;
    data['amgArtistId'] = amgArtistId;
    data['collectionArtistId'] = collectionArtistId;
    data['collectionArtistViewUrl'] = collectionArtistViewUrl;
    data['hasITunesExtras'] = hasITunesExtras;
    data['isStreamable'] = isStreamable;
    return data;
  }
}
