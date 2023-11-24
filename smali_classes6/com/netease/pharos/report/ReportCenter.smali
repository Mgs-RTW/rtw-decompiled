.class public Lcom/netease/pharos/report/ReportCenter;
.super Ljava/lang/Object;
.source "ReportCenter.java"


# static fields
.field private static mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 25
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/netease/pharos/report/ReportCenter$1;

    invoke-direct {v0}, Lcom/netease/pharos/report/ReportCenter$1;-><init>()V

    sput-object v0, Lcom/netease/pharos/report/ReportCenter;->sHandler:Landroid/os/Handler;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getNetmonReport()Lcom/netease/pharos/report/NetmonReport;
    .locals 1

    .line 51
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-direct {v0}, Lcom/netease/pharos/report/NetmonReport;-><init>()V

    sput-object v0, Lcom/netease/pharos/report/ReportCenter;->mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

    .line 54
    :cond_0
    sget-object v0, Lcom/netease/pharos/report/ReportCenter;->mNetmonReport:Lcom/netease/pharos/report/NetmonReport;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 61
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
