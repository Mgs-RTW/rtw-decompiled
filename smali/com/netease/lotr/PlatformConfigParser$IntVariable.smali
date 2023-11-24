.class public Lcom/netease/lotr/PlatformConfigParser$IntVariable;
.super Lcom/netease/lotr/PlatformConfigParser$Variable;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/PlatformConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntVariable"
.end annotation


# instance fields
.field protected m_value:I

.field final synthetic this$0:Lcom/netease/lotr/PlatformConfigParser;


# direct methods
.method public constructor <init>(Lcom/netease/lotr/PlatformConfigParser;Ljava/lang/String;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->this$0:Lcom/netease/lotr/PlatformConfigParser;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/netease/lotr/PlatformConfigParser$Variable;-><init>(Lcom/netease/lotr/PlatformConfigParser;Ljava/lang/String;)V

    .line 40
    iput p3, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "=="

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 62
    iget p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v1, "!="

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    iget p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    if-eq p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    const-string v1, ">="

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    iget p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    if-lt p1, p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    const-string v1, ">"

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    iget p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    if-le p1, p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    const-string v1, "<="

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 78
    iget p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    if-gt p1, p2, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    const-string v1, "<"

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 82
    iget p1, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    if-ge p1, p2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    const-string p2, "NeoXDevice"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized predicate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/netease/lotr/PlatformConfigParser$IntVariable;->m_value:I

    return v0
.end method
