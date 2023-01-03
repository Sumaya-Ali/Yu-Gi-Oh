class Card {
  final int? id,atk,def;
  final String? title,subtitle,desc,image;

  Card({
    this.id,
    this.title,
    this.subtitle,
    this.desc,
    this.atk,
    this.def,
    this.image,
  });
}

List<Card> cards =[
  Card(
    id: 1,
    def:2000,
    title: "التنين الأسود أحمر العينين",
    subtitle: "تنين عادي",
    desc: "تنين شري بهجوم مميت",
    atk: 2400,
    image: "assets/RedEyesBlackDragon.png",
  ),
  Card(
    id: 2,
    def:0,
    title: "إحياء الوحوش",
    subtitle: "ورقة سحر",
    desc: "استدعاء خاص لوحش واحد من مقبرة اللاعب الآخر للقتال إلى جانبك",
    atk: 0,
    image: "assets/MonsterRebornIm.png",
  ),
  Card(
    id: 3,
    def:200,
    title: "كوريبو",
    subtitle: "تأثير الشيطان",
    desc: "خلال دور خصمك، عند احتساب الضرر، يمكنك تجاهل هذه البطاقة، لا يحتسب أي ضرر من المعركة الحالية- تأثير سريع",
    atk: 300,
    image: "assets/Kuriboh.png",
  ),
  Card(
    id: 4,
    def:2100,
    title: "الظلام الأسود",
    subtitle: "عجلة السحر",
    desc: "الساحر النهائي في الهجوم والدفاع",
    atk: 2500,
    image: "assets/DarkMagicianAlternate.png",
  ),
  Card(
    id: 5,
    def:0,
    title: "أسطوانة السحر",
    subtitle: "ورقة فخ",
    desc: "عندما يعلن وحش الخصم الهجوم عليك، تستهدف هذه الورقة الوحش المهاجم، ترفض الهجوم، وإذا فعلت تعكس الضرر على الخصم بمقدار يساوي نقاط هجومه",
    atk: 0,
    image: "assets/MagicCylinder.png",
  ),
  Card(
    id: 6,
    def:100,
    title: "فريا روح النصر",
    subtitle: "تأثير الجنية",
    desc: "طالما أنك تتحكم ببطاقات مفتوحة من نوع وحوش جنية ماعدا فريا روح النصر، لا يمكن استهداف هذه البطاقة، وكل بطاقات نوع وحش جني يكسب 400 نقطة هجوم ودفاع",
    atk: 100,
    image: "assets/SpiritOfVictory.png",
  ),
];