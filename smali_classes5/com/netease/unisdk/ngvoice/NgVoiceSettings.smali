.class public Lcom/netease/unisdk/ngvoice/NgVoiceSettings;
.super Ljava/lang/Object;
.source "NgVoiceSettings.java"


# instance fields
.field public host:Ljava/lang/String;

.field public keep_type:Ljava/lang/String;

.field public maxDuration:I

.field public tousers:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public useragent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x2bf20

    .line 45
    iput v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->maxDuration:I

    const-string v0, "89"

    .line 46
    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->host:Ljava/lang/String;

    const-string v0, "_1_"

    .line 47
    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->tousers:Ljava/lang/String;

    const-string v0, "week"

    .line 48
    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->keep_type:Ljava/lang/String;

    return-void
.end method
