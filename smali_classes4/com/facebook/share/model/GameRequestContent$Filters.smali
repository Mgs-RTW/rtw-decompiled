.class public final enum Lcom/facebook/share/model/GameRequestContent$Filters;
.super Ljava/lang/Enum;
.source "GameRequestContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/GameRequestContent$Filters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum EVERYBODY:Lcom/facebook/share/model/GameRequestContent$Filters;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v1, 0x0

    const-string v2, "APP_USERS"

    invoke-direct {v0, v2, v1}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 42
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v2, 0x1

    const-string v3, "APP_NON_USERS"

    invoke-direct {v0, v3, v2}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 43
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v3, 0x2

    const-string v4, "EVERYBODY"

    invoke-direct {v0, v4, v3}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->EVERYBODY:Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 40
    sget-object v4, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    aput-object v4, v0, v1

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->EVERYBODY:Lcom/facebook/share/model/GameRequestContent$Filters;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;
    .locals 1

    .line 40
    const-class v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/GameRequestContent$Filters;
    .locals 1

    .line 40
    sget-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-virtual {v0}, [Lcom/facebook/share/model/GameRequestContent$Filters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object v0
.end method
