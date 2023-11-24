.class public final enum Lcom/netease/mpay/oversea/t/c/g;
.super Ljava/lang/Enum;
.source "LoginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/t/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum B:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum C:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum D:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum E:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum F:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum G:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum H:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum I:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum J:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum K:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum L:Lcom/netease/mpay/oversea/t/c/g;

.field private static final synthetic M:[Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum h:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum i:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum j:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum k:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum l:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum m:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum n:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum o:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum p:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum q:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum r:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum s:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum t:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum u:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum v:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum w:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum x:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum y:Lcom/netease/mpay/oversea/t/c/g;

.field public static final enum z:Lcom/netease/mpay/oversea/t/c/g;


# instance fields
.field public final a:Ljava/lang/String;

.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 1
    new-instance v7, Lcom/netease/mpay/oversea/t/c/g;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "unknown"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/t/c/g;

    const-string v9, "INHERIT"

    const/4 v10, 0x1

    const/16 v11, 0x64

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, "inherit"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/t/c/g;

    const-string v16, "GUEST"

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v20, "/api/users/login/guest"

    const-string v21, "guest"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    new-instance v2, Lcom/netease/mpay/oversea/t/c/g;

    const-string v9, "GAME_CENTER"

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v13, ""

    const-string v14, "game_center"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/netease/mpay/oversea/t/c/g;->k:Lcom/netease/mpay/oversea/t/c/g;

    .line 5
    new-instance v3, Lcom/netease/mpay/oversea/t/c/g;

    const-string v16, "WECHAT"

    const/16 v17, 0x4

    const/16 v18, 0xe

    const/16 v19, 0x400

    const-string v20, "/api/users/login/v2/wechat"

    const-string v21, "wechat"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/netease/mpay/oversea/t/c/g;->l:Lcom/netease/mpay/oversea/t/c/g;

    .line 6
    new-instance v4, Lcom/netease/mpay/oversea/t/c/g;

    const-string v9, "HUAWEI"

    const/4 v10, 0x5

    const/16 v11, 0x12

    const/16 v12, 0x1000

    const-string v13, "/api/users/login/v2/huawei"

    const-string v14, "huawei"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/t/c/g;->m:Lcom/netease/mpay/oversea/t/c/g;

    .line 7
    new-instance v5, Lcom/netease/mpay/oversea/t/c/g;

    const-string v16, "NINTENDO"

    const/16 v17, 0x6

    const/16 v18, 0xd

    const/16 v19, 0x200

    const-string v20, "/api/users/login/v2/login_code/get_info"

    const-string v21, "nintendo"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/netease/mpay/oversea/t/c/g;->n:Lcom/netease/mpay/oversea/t/c/g;

    .line 8
    new-instance v6, Lcom/netease/mpay/oversea/t/c/g;

    const-string v9, "PSN"

    const/4 v10, 0x7

    const/16 v11, 0xb

    const/16 v12, 0x100

    const-string v13, ""

    const-string v14, "psn"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/netease/mpay/oversea/t/c/g;->o:Lcom/netease/mpay/oversea/t/c/g;

    .line 9
    new-instance v8, Lcom/netease/mpay/oversea/t/c/g;

    const-string v16, "DMM"

    const/16 v17, 0x8

    const/16 v18, 0x6

    const/16 v19, 0x8

    const-string v20, "/api/users/login/v2/dmm"

    const-string v21, "dmm"

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/netease/mpay/oversea/t/c/g;->p:Lcom/netease/mpay/oversea/t/c/g;

    .line 10
    new-instance v16, Lcom/netease/mpay/oversea/t/c/g;

    const-string v10, "AMAZON"

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/16 v13, 0x20

    const-string v14, "/api/users/login/v2/amazon"

    const-string v15, "amazon"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lcom/netease/mpay/oversea/t/c/g;->q:Lcom/netease/mpay/oversea/t/c/g;

    .line 11
    new-instance v9, Lcom/netease/mpay/oversea/t/c/g;

    const-string v18, "STEAM"

    const/16 v19, 0xa

    const/16 v20, 0x7

    const/16 v21, 0x10

    const-string v22, ""

    const-string v23, "steam"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/netease/mpay/oversea/t/c/g;->r:Lcom/netease/mpay/oversea/t/c/g;

    .line 12
    new-instance v10, Lcom/netease/mpay/oversea/t/c/g;

    const-string v25, "LINE"

    const/16 v26, 0xb

    const/16 v27, 0x9

    const/16 v28, 0x40

    const-string v29, "/api/users/login/v2/line"

    const-string v30, "line"

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/netease/mpay/oversea/t/c/g;->s:Lcom/netease/mpay/oversea/t/c/g;

    .line 13
    new-instance v11, Lcom/netease/mpay/oversea/t/c/g;

    const-string v18, "LINE_GAME"

    const/16 v19, 0xc

    const/16 v20, 0xa

    const/16 v21, 0x80

    const-string v22, "/api/users/login/v2/line_v1"

    const-string v23, "linegame"

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    .line 14
    new-instance v12, Lcom/netease/mpay/oversea/t/c/g;

    const-string v25, "TWITTER"

    const/16 v26, 0xd

    const/16 v27, 0x5

    const/16 v28, 0x4

    const-string v29, "/api/users/login/v2/twitter"

    const-string v30, "twitter"

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/netease/mpay/oversea/t/c/g;->u:Lcom/netease/mpay/oversea/t/c/g;

    .line 15
    new-instance v13, Lcom/netease/mpay/oversea/t/c/g;

    const-string v18, "FACEBOOK"

    const/16 v19, 0xe

    const/16 v20, 0x4

    const/16 v21, 0x2

    const-string v22, "/api/users/login/v2/facebook"

    const-string v23, "facebook"

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/netease/mpay/oversea/t/c/g;->v:Lcom/netease/mpay/oversea/t/c/g;

    .line 16
    new-instance v14, Lcom/netease/mpay/oversea/t/c/g;

    const-string v25, "VK"

    const/16 v26, 0xf

    const/16 v27, 0x11

    const/16 v28, 0x800

    const-string v29, "/api/users/login/v2/vk"

    const-string v30, "vk"

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/netease/mpay/oversea/t/c/g;->w:Lcom/netease/mpay/oversea/t/c/g;

    .line 17
    new-instance v15, Lcom/netease/mpay/oversea/t/c/g;

    const-string v18, "KAKAO"

    const/16 v19, 0x10

    const/16 v20, 0x13

    const/16 v21, 0x2000

    const-string v22, "/api/users/login/v2/kakao"

    const-string v23, "kakao"

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/netease/mpay/oversea/t/c/g;->x:Lcom/netease/mpay/oversea/t/c/g;

    .line 18
    new-instance v17, Lcom/netease/mpay/oversea/t/c/g;

    const-string v25, "NAVER"

    const/16 v26, 0x11

    const/16 v27, 0x14

    const/16 v28, 0x4000

    const-string v29, "/api/users/login/v2/naver"

    const-string v30, "naver"

    move-object/from16 v24, v17

    invoke-direct/range {v24 .. v30}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v17, Lcom/netease/mpay/oversea/t/c/g;->y:Lcom/netease/mpay/oversea/t/c/g;

    .line 19
    new-instance v25, Lcom/netease/mpay/oversea/t/c/g;

    const-string v19, "GOOGLE"

    const/16 v20, 0x12

    const/16 v21, 0x3

    const/16 v22, 0x1

    const-string v23, "/api/users/login/v2/google"

    const-string v24, "google"

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v24}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v25, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    .line 21
    new-instance v18, Lcom/netease/mpay/oversea/t/c/g;

    const-string v27, "TIKTOK"

    const/16 v28, 0x13

    const/16 v29, 0x17

    const/high16 v30, 0x10000

    const-string v31, "/api/users/login/v2/tiktok"

    const-string v32, "tiktok"

    move-object/from16 v26, v18

    invoke-direct/range {v26 .. v32}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lcom/netease/mpay/oversea/t/c/g;->A:Lcom/netease/mpay/oversea/t/c/g;

    .line 22
    new-instance v19, Lcom/netease/mpay/oversea/t/c/g;

    const-string v34, "NT_EMAIL"

    const/16 v35, 0x14

    const/16 v36, 0x16

    const/high16 v37, 0x20000

    const-string v38, "/api/users/login/v2/email/login"

    const-string v39, "email"

    move-object/from16 v33, v19

    invoke-direct/range {v33 .. v39}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    .line 23
    new-instance v20, Lcom/netease/mpay/oversea/t/c/g;

    const-string v27, "SIGN_IN_WITH_APPLE"

    const/16 v28, 0x15

    const/16 v29, 0x10

    const/high16 v30, 0x40000

    const-string v31, "/api/users/login/v2/login_code/get_info"

    const-string v32, "apple"

    move-object/from16 v26, v20

    invoke-direct/range {v26 .. v32}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lcom/netease/mpay/oversea/t/c/g;->C:Lcom/netease/mpay/oversea/t/c/g;

    .line 24
    new-instance v21, Lcom/netease/mpay/oversea/t/c/g;

    const-string v34, "DISCORD"

    const/16 v35, 0x16

    const/16 v36, 0x18

    const/high16 v37, 0x80000

    const-string v38, "/api/users/login/v2/login_code/get_info"

    const-string v39, "discord"

    move-object/from16 v33, v21

    invoke-direct/range {v33 .. v39}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v21, Lcom/netease/mpay/oversea/t/c/g;->D:Lcom/netease/mpay/oversea/t/c/g;

    .line 25
    new-instance v22, Lcom/netease/mpay/oversea/t/c/g;

    const-string v27, "NT_PASSPORT"

    const/16 v28, 0x17

    const/16 v29, 0x19

    const/high16 v30, 0x100000

    const-string v31, "/api/users/login/v2/nt_passport/auth"

    const-string v32, "passport"

    move-object/from16 v26, v22

    invoke-direct/range {v26 .. v32}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v22, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    .line 26
    new-instance v23, Lcom/netease/mpay/oversea/t/c/g;

    const-string v34, "EPIC"

    const/16 v35, 0x18

    const/16 v36, 0x10

    const/16 v37, 0x0

    const-string v38, ""

    const-string v39, "epic"

    move-object/from16 v33, v23

    invoke-direct/range {v33 .. v39}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v23, Lcom/netease/mpay/oversea/t/c/g;->F:Lcom/netease/mpay/oversea/t/c/g;

    .line 27
    new-instance v24, Lcom/netease/mpay/oversea/t/c/g;

    const-string v27, "NT_PASSPORT_WEB"

    const/16 v28, 0x19

    const/16 v29, 0x3e3

    const/16 v30, 0x0

    const-string v31, "/api/users/login/v2/nt_passport/page/redirect"

    const-string v32, "passport"

    move-object/from16 v26, v24

    invoke-direct/range {v26 .. v32}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v24, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    .line 28
    new-instance v26, Lcom/netease/mpay/oversea/t/c/g;

    const-string v34, "NT_PASSPORT_UPDATE"

    const/16 v35, 0x1a

    const/16 v36, 0x3e4

    const-string v38, "/api/users/login/v2/nt_passport/bind_email/redirect"

    const-string v39, "passport"

    move-object/from16 v33, v26

    invoke-direct/range {v33 .. v39}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v26, Lcom/netease/mpay/oversea/t/c/g;->H:Lcom/netease/mpay/oversea/t/c/g;

    .line 30
    new-instance v34, Lcom/netease/mpay/oversea/t/c/g;

    const-string v28, "MORE"

    const/16 v29, 0x1b

    const/16 v30, 0x3e7

    const/16 v31, 0x0

    const-string v32, ""

    const-string v33, "more"

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v33}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v34, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    .line 31
    new-instance v27, Lcom/netease/mpay/oversea/t/c/g;

    const-string v36, "TOKEN"

    const/16 v37, 0x1c

    const/16 v38, 0x3e6

    const/16 v39, 0x0

    const-string v40, "/api/users/login/v2/sdk_token"

    const-string v41, "token"

    move-object/from16 v35, v27

    invoke-direct/range {v35 .. v41}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v27, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    .line 32
    new-instance v28, Lcom/netease/mpay/oversea/t/c/g;

    const-string v43, "QUICK_LOGIN"

    const/16 v44, 0x1d

    const/16 v45, 0x3e5

    const/16 v46, 0x0

    const-string v47, ""

    const-string v48, ""

    move-object/from16 v42, v28

    invoke-direct/range {v42 .. v48}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v28, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    .line 34
    new-instance v29, Lcom/netease/mpay/oversea/t/c/g;

    const-string v36, "LINK_RESTORE_ACCOUNT_PGS"

    const/16 v37, 0x1e

    const/16 v38, 0x3

    const-string v40, "/api/users/login/v2/user_link_account/restore"

    const-string v41, "google"

    move-object/from16 v35, v29

    invoke-direct/range {v35 .. v41}, Lcom/netease/mpay/oversea/t/c/g;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v29, Lcom/netease/mpay/oversea/t/c/g;->L:Lcom/netease/mpay/oversea/t/c/g;

    move-object/from16 v30, v15

    const/16 v15, 0x1f

    new-array v15, v15, [Lcom/netease/mpay/oversea/t/c/g;

    aput-object v7, v15, v31

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v16, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v30, v15, v0

    const/16 v0, 0x11

    aput-object v17, v15, v0

    const/16 v0, 0x12

    aput-object v25, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v20, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v26, v15, v0

    const/16 v0, 0x1b

    aput-object v34, v15, v0

    const/16 v0, 0x1c

    aput-object v27, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    .line 35
    sput-object v15, Lcom/netease/mpay/oversea/t/c/g;->M:[Lcom/netease/mpay/oversea/t/c/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/g;->g:I

    .line 110
    iput p3, p0, Lcom/netease/mpay/oversea/t/c/g;->b:I

    .line 111
    iput p3, p0, Lcom/netease/mpay/oversea/t/c/g;->d:I

    .line 112
    iput p4, p0, Lcom/netease/mpay/oversea/t/c/g;->e:I

    .line 113
    iput-object p5, p0, Lcom/netease/mpay/oversea/t/c/g;->a:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lcom/netease/mpay/oversea/t/c/g;->f:Ljava/lang/String;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/g;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(I)Lcom/netease/mpay/oversea/t/c/g;
    .locals 6

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/t/c/g;->values()[Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/t/c/g;->d(I)V

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/oversea/t/c/g;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 25
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/netease/mpay/oversea/t/c/g;->b(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/t/c/g;

    .line 14
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v2, v3, :cond_1

    .line 15
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 21
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    new-array p0, v0, [I

    return-object p0
.end method

.method public static b(Lcom/netease/mpay/oversea/t/c/g;)Z
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->r:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/t/c/g;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->M:[Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/t/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/t/c/g;->d:I

    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/t/c/g;->e:I

    if-eqz v0, :cond_0

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/t/c/g;->g:I

    return v0
.end method

.method public c(I)Lcom/netease/mpay/oversea/t/c/g;
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/g;->g:I

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/g;->b:I

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/g;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/g;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/t/c/g;->b:I

    return v0
.end method
