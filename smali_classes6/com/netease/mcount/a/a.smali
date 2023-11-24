.class public Lcom/netease/mcount/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2, p3}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mcount/d/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "create table event_table(id integer primary key autoincrement, ev_key varchar, timestamp long, carrier varchar, network_type varchar, vpn varchar, install_time long, segmentation varchar)"

    iput-object p1, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table event_table(id integer primary key autoincrement, ev_key varchar, timestamp long, carrier varchar, network_type varchar, vpn varchar, install_time long, segmentation varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
