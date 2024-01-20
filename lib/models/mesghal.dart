class Mesghal {
  String? p;
  String? h;
  String? l;
  String? d;
  int? dp;
  String? dt;
  String? t;
  String? tEn;
  String? tG;
  String? ts;

  Mesghal(
      {this.p,
      this.h,
      this.l,
      this.d,
      this.dp,
      this.dt,
      this.t,
      this.tEn,
      this.tG,
      this.ts});

  Mesghal.fromJson(Map<String, dynamic> json) {
    p = json['p'];
    h = json['h'];
    l = json['l'];
    d = json['d'];
    dp = json['dp'];
    dt = json['dt'];
    t = json['t'];
    tEn = json['t_en'];
    tG = json['t-g'];
    ts = json['ts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['p'] = p;
    data['h'] = h;
    data['l'] = l;
    data['d'] = d;
    data['dp'] = dp;
    data['dt'] = dt;
    data['t'] = t;
    data['t_en'] = tEn;
    data['t-g'] = tG;
    data['ts'] = ts;
    return data;
  }
}
