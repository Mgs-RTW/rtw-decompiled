.class public final enum Lcom/linecorp/linesdk/FriendSortField;
.super Ljava/lang/Enum;
.source "FriendSortField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/FriendSortField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/FriendSortField;

.field public static final enum NAME:Lcom/linecorp/linesdk/FriendSortField;

.field public static final enum RELATION:Lcom/linecorp/linesdk/FriendSortField;


# instance fields
.field private final serverKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/linecorp/linesdk/FriendSortField;

    const-string v1, "NAME"

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/linecorp/linesdk/FriendSortField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/FriendSortField;->NAME:Lcom/linecorp/linesdk/FriendSortField;

    .line 18
    new-instance v0, Lcom/linecorp/linesdk/FriendSortField;

    const-string v1, "RELATION"

    const-string v2, "relation"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/linecorp/linesdk/FriendSortField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/FriendSortField;->RELATION:Lcom/linecorp/linesdk/FriendSortField;

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lcom/linecorp/linesdk/FriendSortField;

    sget-object v1, Lcom/linecorp/linesdk/FriendSortField;->NAME:Lcom/linecorp/linesdk/FriendSortField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/FriendSortField;->RELATION:Lcom/linecorp/linesdk/FriendSortField;

    aput-object v1, v0, v4

    sput-object v0, Lcom/linecorp/linesdk/FriendSortField;->$VALUES:[Lcom/linecorp/linesdk/FriendSortField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/linecorp/linesdk/FriendSortField;->serverKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/FriendSortField;
    .locals 1

    .line 12
    const-class v0, Lcom/linecorp/linesdk/FriendSortField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/FriendSortField;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/FriendSortField;
    .locals 1

    .line 12
    sget-object v0, Lcom/linecorp/linesdk/FriendSortField;->$VALUES:[Lcom/linecorp/linesdk/FriendSortField;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/FriendSortField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/FriendSortField;

    return-object v0
.end method


# virtual methods
.method public getServerKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/linecorp/linesdk/FriendSortField;->serverKey:Ljava/lang/String;

    return-object v0
.end method
