.class public Lcom/netease/ybuax/Flagclass;
.super Ljava/lang/Object;
.source "Flagclass.java"


# static fields
.field public static AppChannel:Ljava/lang/String; = ""

.field public static Channel_id:Ljava/lang/String; = ""

.field public static EB:I = 0x0

.field public static Udid:Ljava/lang/String; = ""

.field public static VER:Ljava/lang/String; = ""


# instance fields
.field public Detectfinish:Ljava/util/concurrent/Semaphore;

.field public RealGameID:Ljava/lang/String;

.field public Uid:Ljava/lang/String;

.field public WnyklrieResult:I

.field public jfGameId:Ljava/lang/String;

.field private msyimoyqyt:J

.field public uploadapk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/netease/ybuax/Flagclass;->uploadapk:Z

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/netease/ybuax/Flagclass;->WnyklrieResult:I

    .line 17
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/netease/ybuax/Flagclass;->Detectfinish:Ljava/util/concurrent/Semaphore;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/netease/ybuax/Flagclass;->jfGameId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/netease/ybuax/Flagclass;->RealGameID:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/netease/ybuax/Flagclass;->Uid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/netease/ybuax/Flagclass;->msyimoyqyt:J

    return-void
.end method


# virtual methods
.method public native GetWnyklrieResult()I
.end method

.method public native Startybuax()V
.end method
