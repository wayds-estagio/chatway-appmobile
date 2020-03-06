class NeedHelp {
  List<String> precisoAjuda = List<String>();

  NeedHelp({this.precisoAjuda});

  NeedHelp.fromJson(Map<String, dynamic> json) {
    precisoAjuda = json['precisoAjuda'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['precisoAjuda'] = this.precisoAjuda;
    return data;
  }
}
