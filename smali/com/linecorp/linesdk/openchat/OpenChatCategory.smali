.class public final enum Lcom/linecorp/linesdk/openchat/OpenChatCategory;
.super Ljava/lang/Enum;
.source "OpenChatCategory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008 \u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/OpenChatCategory;",
        "",
        "id",
        "",
        "resourceId",
        "(Ljava/lang/String;III)V",
        "getId",
        "()I",
        "getResourceId",
        "NotSelected",
        "School",
        "Friend",
        "Company",
        "Organization",
        "Region",
        "Baby",
        "Sports",
        "Game",
        "Book",
        "Movies",
        "Photo",
        "Art",
        "Animation",
        "Music",
        "Tv",
        "Celebrity",
        "Food",
        "Travel",
        "Pet",
        "Car",
        "Fashion",
        "Health",
        "Finance",
        "Study",
        "Etc",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Animation:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Art:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Baby:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Book:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Car:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Celebrity:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Company:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Etc:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Fashion:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Finance:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Food:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Friend:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Health:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Movies:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Music:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Organization:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Pet:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Photo:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Region:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum School:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Sports:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Study:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Travel:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

.field public static final enum Tv:Lcom/linecorp/linesdk/openchat/OpenChatCategory;


# instance fields
.field private final id:I

.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "NotSelected"

    .line 10
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_notselected:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->NotSelected:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "School"

    .line 11
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_school:I

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->School:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v4

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Friend"

    .line 12
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_friend:I

    const/4 v4, 0x7

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Friend:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v5

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Company"

    .line 13
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_company:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-direct {v1, v2, v6, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Company:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Organization"

    .line 14
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_org:I

    const/4 v6, 0x6

    const/4 v7, 0x4

    invoke-direct {v1, v2, v7, v6, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Organization:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Region"

    .line 15
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_region:I

    const/16 v7, 0x8

    invoke-direct {v1, v2, v5, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Region:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v5

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Baby"

    .line 16
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_baby:I

    const/16 v5, 0x1c

    invoke-direct {v1, v2, v6, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Baby:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v6

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Sports"

    .line 17
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_sports:I

    const/16 v5, 0x10

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Sports:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v4

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Game"

    .line 18
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_game:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v7, v4, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Game:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v7

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Book"

    .line 19
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_book:I

    const/16 v6, 0x9

    const/16 v7, 0x1d

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Book:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Movies"

    .line 20
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_movies:I

    const/16 v6, 0xa

    const/16 v7, 0x1e

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Movies:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Photo"

    .line 21
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_photo:I

    const/16 v6, 0xb

    const/16 v7, 0x25

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Photo:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v6

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Art"

    .line 22
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_art:I

    const/16 v7, 0xc

    const/16 v8, 0x29

    invoke-direct {v1, v2, v7, v8, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Art:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v7

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Animation"

    .line 23
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_ani:I

    const/16 v8, 0x16

    const/16 v9, 0xd

    invoke-direct {v1, v2, v9, v8, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Animation:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Music"

    .line 24
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_music:I

    const/16 v9, 0xe

    const/16 v10, 0x21

    invoke-direct {v1, v2, v9, v10, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Music:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Tv"

    .line 25
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_tv:I

    const/16 v9, 0x18

    const/16 v10, 0xf

    invoke-direct {v1, v2, v10, v9, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Tv:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Celebrity"

    .line 26
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_celebrity:I

    const/16 v10, 0x1a

    invoke-direct {v1, v2, v5, v10, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Celebrity:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v5

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Food"

    .line 27
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_food:I

    invoke-direct {v1, v2, v4, v7, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Food:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v4

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Travel"

    .line 28
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_travel:I

    const/16 v4, 0x12

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Travel:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v4

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Pet"

    .line 29
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_pet:I

    const/16 v4, 0x13

    const/16 v5, 0x1b

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Pet:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v4

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Car"

    .line 30
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_car:I

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Car:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v5

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Fashion"

    .line 31
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_fashion:I

    const/16 v4, 0x15

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Fashion:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Health"

    .line 32
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_health:I

    const/16 v4, 0x17

    invoke-direct {v1, v2, v8, v4, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Health:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v8

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Finance"

    .line 33
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_finance:I

    const/16 v5, 0x28

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Finance:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Study"

    .line 34
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_study:I

    invoke-direct {v1, v2, v9, v6, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Study:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    aput-object v1, v0, v9

    new-instance v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const-string v2, "Etc"

    .line 35
    sget v3, Lcom/linecorp/linesdk/R$string;->square_create_category_etc:I

    const/16 v4, 0x19

    const/16 v5, 0x23

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->Etc:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->id:I

    iput p4, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->resourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/openchat/OpenChatCategory;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->$VALUES:[Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->id:I

    return v0
.end method

.method public final getResourceId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->resourceId:I

    return v0
.end method
