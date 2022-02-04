

class SoccerModel{

  Fixture? fixture;
  Team? home;
  Team? away;
  Goal? goal;
  SoccerModel({this.goal, this.fixture, this.away,this.home});
   factory SoccerModel.fromJson(Map<String, dynamic>json){
     return SoccerModel(
       fixture: Fixture.fromJson(json['fixture']),
       home: Team.fromJson(json['teams']['home']),
       away: Team.fromJson(json['teams']['away']),
       goal: Goal.fromJson(json['goal']),
     );
   }

}

class Fixture{
  int? id;
  int? date;
  Status? status;
  Fixture(this.status, this.id, this.date,);
   factory Fixture.fromJson(Map<String, dynamic>json){
     return Fixture(json['status'], json['id'], json['date']);
   }
}
class Status{
  int? elapsedTime;
  String? long;

  Status(this.elapsedTime, this.long);
  factory Status.fromJson(Map<String, dynamic> json){
    return Status(json['elapsedTime'], json['long']);
  }

}
class Team{
  int? id;
  String? name;
  String? logoUrl;
  bool? winner;

  Team(
      this.id,
      this.name,
      this.logoUrl,
      this.winner,
      );

  factory Team.fromJson(Map<String, dynamic> json){
    return Team(json["id"], json['name'], json['logoUrl'], json['winner']);
  }

}

class Goal{
  int? home;
  int? away;
  Goal({
    this.home,
    this.away,
}
);
factory Goal.fromJson(Map<String, dynamic> json){
  return Goal(home :json['home'], away: json['away'],);
}
}