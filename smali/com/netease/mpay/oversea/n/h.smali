.class public final enum Lcom/netease/mpay/oversea/n/h;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/n/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/netease/mpay/oversea/n/h;

.field public static final enum B:Lcom/netease/mpay/oversea/n/h;

.field public static final enum C:Lcom/netease/mpay/oversea/n/h;

.field public static final enum D:Lcom/netease/mpay/oversea/n/h;

.field public static final enum E:Lcom/netease/mpay/oversea/n/h;

.field public static final enum F:Lcom/netease/mpay/oversea/n/h;

.field public static final enum G:Lcom/netease/mpay/oversea/n/h;

.field public static final enum H:Lcom/netease/mpay/oversea/n/h;

.field private static final synthetic I:[Lcom/netease/mpay/oversea/n/h;

.field public static final enum c:Lcom/netease/mpay/oversea/n/h;

.field public static final enum d:Lcom/netease/mpay/oversea/n/h;

.field public static final enum e:Lcom/netease/mpay/oversea/n/h;

.field public static final enum f:Lcom/netease/mpay/oversea/n/h;

.field public static final enum g:Lcom/netease/mpay/oversea/n/h;

.field public static final enum h:Lcom/netease/mpay/oversea/n/h;

.field public static final enum i:Lcom/netease/mpay/oversea/n/h;

.field public static final enum j:Lcom/netease/mpay/oversea/n/h;

.field public static final enum k:Lcom/netease/mpay/oversea/n/h;

.field public static final enum l:Lcom/netease/mpay/oversea/n/h;

.field public static final enum m:Lcom/netease/mpay/oversea/n/h;

.field public static final enum n:Lcom/netease/mpay/oversea/n/h;

.field public static final enum o:Lcom/netease/mpay/oversea/n/h;

.field public static final enum p:Lcom/netease/mpay/oversea/n/h;

.field public static final enum q:Lcom/netease/mpay/oversea/n/h;

.field public static final enum r:Lcom/netease/mpay/oversea/n/h;

.field public static final enum s:Lcom/netease/mpay/oversea/n/h;

.field public static final enum t:Lcom/netease/mpay/oversea/n/h;

.field public static final enum u:Lcom/netease/mpay/oversea/n/h;

.field public static final enum v:Lcom/netease/mpay/oversea/n/h;

.field public static final enum w:Lcom/netease/mpay/oversea/n/h;

.field public static final enum x:Lcom/netease/mpay/oversea/n/h;

.field public static final enum y:Lcom/netease/mpay/oversea/n/h;

.field public static final enum z:Lcom/netease/mpay/oversea/n/h;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/n/h;

    const/4 v1, 0x1

    const-string v2, "bind_user"

    const-string v3, "BIND_USER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    .line 2
    new-instance v3, Lcom/netease/mpay/oversea/n/h;

    const/4 v4, 0x2

    const-string v5, "API_BIND"

    const-string v6, "api_bind"

    invoke-direct {v3, v5, v1, v4, v6}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    .line 3
    new-instance v5, Lcom/netease/mpay/oversea/n/h;

    const/4 v6, 0x3

    const-string v7, "login"

    const-string v8, "LOGIN"

    invoke-direct {v5, v8, v4, v6, v7}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    .line 4
    new-instance v8, Lcom/netease/mpay/oversea/n/h;

    const/4 v9, 0x4

    const-string v10, "AUTO_LOGIN"

    const-string v11, "auto_login"

    invoke-direct {v8, v10, v6, v9, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    .line 5
    new-instance v10, Lcom/netease/mpay/oversea/n/h;

    const/4 v11, 0x5

    const-string v12, "QUERY"

    const-string v13, "query"

    invoke-direct {v10, v12, v9, v11, v13}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/netease/mpay/oversea/n/h;->g:Lcom/netease/mpay/oversea/n/h;

    .line 6
    new-instance v12, Lcom/netease/mpay/oversea/n/h;

    const/4 v13, 0x6

    const-string v14, "switch_account"

    const-string v15, "SWITCH_ACCOUNT"

    invoke-direct {v12, v15, v11, v13, v14}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    .line 7
    new-instance v15, Lcom/netease/mpay/oversea/n/h;

    const/4 v11, 0x7

    const-string v9, "START_NEW_GAME"

    invoke-direct {v15, v9, v13, v11, v14}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    .line 8
    new-instance v9, Lcom/netease/mpay/oversea/n/h;

    const/16 v13, 0xe

    const-string v6, "START_NEW_GAME_WITHOUT_GUIDE"

    invoke-direct {v9, v6, v11, v13, v14}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/netease/mpay/oversea/n/h;->j:Lcom/netease/mpay/oversea/n/h;

    .line 9
    new-instance v6, Lcom/netease/mpay/oversea/n/h;

    const/16 v11, 0x8

    const-string v4, "START_NEW_GAME_WITH_LAST"

    const/16 v1, 0x14

    invoke-direct {v6, v4, v11, v1, v14}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/netease/mpay/oversea/n/h;->k:Lcom/netease/mpay/oversea/n/h;

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v4, "PAYMENT"

    const/16 v14, 0x9

    const-string v13, "pay"

    invoke-direct {v1, v4, v14, v11, v13}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->l:Lcom/netease/mpay/oversea/n/h;

    .line 11
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v13, "DYNAMIC_WEB"

    const/16 v14, 0xa

    const/16 v11, 0x9

    move-object/from16 v16, v1

    const-string v1, "web"

    invoke-direct {v4, v13, v14, v11, v1}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->m:Lcom/netease/mpay/oversea/n/h;

    .line 12
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "INHERIT_LOGIN"

    const/16 v13, 0xb

    move-object/from16 v17, v4

    const-string v4, "inherit"

    invoke-direct {v1, v11, v13, v14, v4}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->n:Lcom/netease/mpay/oversea/n/h;

    .line 13
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "REFRESH"

    const/16 v13, 0xc

    const/16 v14, 0xb

    move-object/from16 v18, v1

    const-string v1, "refresh"

    invoke-direct {v4, v11, v13, v14, v1}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    .line 14
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "LOGIN_BIND"

    const/16 v13, 0xd

    const/16 v14, 0xc

    move-object/from16 v19, v4

    const-string v4, "login_bind"

    invoke-direct {v1, v11, v13, v14, v4}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    .line 15
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "USER_CENTER"

    const-string v14, "user_center"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v4, v11, v1, v13, v14}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->q:Lcom/netease/mpay/oversea/n/h;

    .line 16
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "quick_login"

    const-string v13, "QUICK_LOGIN"

    const/16 v14, 0xf

    move-object/from16 v21, v4

    const/16 v4, 0xf

    invoke-direct {v1, v13, v14, v4, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->r:Lcom/netease/mpay/oversea/n/h;

    .line 17
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const/16 v13, 0x19

    const-string v14, "QUICK_LOGIN_UC"

    move-object/from16 v22, v1

    const/16 v1, 0x10

    invoke-direct {v4, v14, v1, v13, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->s:Lcom/netease/mpay/oversea/n/h;

    .line 18
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v14, "QUICK_LOGIN_GUIDE"

    const/16 v13, 0x11

    move-object/from16 v23, v4

    const/16 v4, 0x10

    invoke-direct {v1, v14, v13, v4, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    .line 19
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v13, "QUICK_LOGIN_GUIDE_UC"

    const/16 v14, 0x12

    move-object/from16 v24, v1

    const/16 v1, 0x15

    invoke-direct {v4, v13, v14, v1, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->u:Lcom/netease/mpay/oversea/n/h;

    .line 20
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "QUICK_LOGIN_BIND"

    const/16 v13, 0x13

    const/16 v14, 0x11

    invoke-direct {v1, v11, v13, v14, v2}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    .line 21
    new-instance v11, Lcom/netease/mpay/oversea/n/h;

    const-string v13, "BIND_VERIFY_EMAIL"

    const/16 v14, 0x14

    move-object/from16 v25, v1

    const/16 v1, 0x16

    invoke-direct {v11, v13, v14, v1, v2}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/n/h;->w:Lcom/netease/mpay/oversea/n/h;

    .line 22
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const/16 v13, 0x18

    const-string v14, "BIND_RESET_PWD"

    move-object/from16 v26, v11

    const/16 v11, 0x15

    invoke-direct {v1, v14, v11, v13, v2}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    .line 23
    new-instance v11, Lcom/netease/mpay/oversea/n/h;

    const-string v14, "SECURITY_EMAIL"

    const/16 v13, 0x16

    move-object/from16 v27, v1

    const/16 v1, 0x12

    move-object/from16 v28, v4

    const-string v4, "security_email"

    invoke-direct {v11, v14, v13, v1, v4}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/n/h;->y:Lcom/netease/mpay/oversea/n/h;

    .line 24
    new-instance v1, Lcom/netease/mpay/oversea/n/h;

    const-string v4, "RESTORE_ACCOUNT"

    const/16 v13, 0x17

    const/16 v14, 0x13

    move-object/from16 v29, v11

    const-string v11, "restore_account"

    invoke-direct {v1, v4, v13, v14, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n/h;->z:Lcom/netease/mpay/oversea/n/h;

    .line 25
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "SECURITY_EMAIL_BIND"

    const/16 v14, 0x18

    invoke-direct {v4, v11, v14, v13, v2}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->A:Lcom/netease/mpay/oversea/n/h;

    .line 26
    new-instance v2, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "API_BIND_VERIFY"

    const-string v13, "api_bind"

    move-object/from16 v30, v4

    const/16 v4, 0x19

    invoke-direct {v2, v11, v4, v14, v13}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/netease/mpay/oversea/n/h;->B:Lcom/netease/mpay/oversea/n/h;

    .line 27
    new-instance v11, Lcom/netease/mpay/oversea/n/h;

    const-string v13, "LOGIN_REGISTER_LVU"

    const/16 v14, 0x1a

    move-object/from16 v31, v2

    const-string v2, "login_register_lvu"

    invoke-direct {v11, v13, v14, v4, v2}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/n/h;->C:Lcom/netease/mpay/oversea/n/h;

    .line 28
    new-instance v2, Lcom/netease/mpay/oversea/n/h;

    const-string v4, "PAY_REGISTER_LVU"

    const/16 v13, 0x1b

    move-object/from16 v32, v11

    const-string v11, "register_lvu"

    invoke-direct {v2, v4, v13, v14, v11}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/netease/mpay/oversea/n/h;->D:Lcom/netease/mpay/oversea/n/h;

    .line 29
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "LINK_RESTORE_ACCOUNT"

    const/16 v13, 0x1c

    const/16 v14, 0x1b

    invoke-direct {v4, v11, v13, v14, v7}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->E:Lcom/netease/mpay/oversea/n/h;

    .line 30
    new-instance v11, Lcom/netease/mpay/oversea/n/h;

    const-string v13, "BIND_WITH_TICKET"

    const/16 v14, 0x1d

    move-object/from16 v33, v4

    const/16 v4, 0x1c

    invoke-direct {v11, v13, v14, v4, v7}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    .line 31
    new-instance v4, Lcom/netease/mpay/oversea/n/h;

    const-string v13, "FORCE_LOGIN_GUEST"

    const/16 v14, 0x1e

    move-object/from16 v34, v11

    const/16 v11, 0x1d

    invoke-direct {v4, v13, v14, v11, v7}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/n/h;->G:Lcom/netease/mpay/oversea/n/h;

    .line 32
    new-instance v7, Lcom/netease/mpay/oversea/n/h;

    const-string v11, "PASSPORT_ANONYMOUS_UPDATE"

    const/16 v13, 0x1f

    move-object/from16 v35, v4

    const-string v4, ""

    invoke-direct {v7, v11, v13, v14, v4}, Lcom/netease/mpay/oversea/n/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/netease/mpay/oversea/n/h;->H:Lcom/netease/mpay/oversea/n/h;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/netease/mpay/oversea/n/h;

    const/4 v11, 0x0

    aput-object v0, v4, v11

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v8, v4, v0

    const/4 v0, 0x4

    aput-object v10, v4, v0

    const/4 v0, 0x5

    aput-object v12, v4, v0

    const/4 v0, 0x6

    aput-object v15, v4, v0

    const/4 v0, 0x7

    aput-object v9, v4, v0

    const/16 v0, 0x8

    aput-object v6, v4, v0

    const/16 v0, 0x9

    aput-object v16, v4, v0

    const/16 v0, 0xa

    aput-object v17, v4, v0

    const/16 v0, 0xb

    aput-object v18, v4, v0

    const/16 v0, 0xc

    aput-object v19, v4, v0

    const/16 v0, 0xd

    aput-object v20, v4, v0

    const/16 v0, 0xe

    aput-object v21, v4, v0

    const/16 v0, 0xf

    aput-object v22, v4, v0

    const/16 v0, 0x10

    aput-object v23, v4, v0

    const/16 v0, 0x11

    aput-object v24, v4, v0

    const/16 v0, 0x12

    aput-object v28, v4, v0

    const/16 v0, 0x13

    aput-object v25, v4, v0

    const/16 v0, 0x14

    aput-object v26, v4, v0

    const/16 v0, 0x15

    aput-object v27, v4, v0

    const/16 v0, 0x16

    aput-object v29, v4, v0

    const/16 v0, 0x17

    aput-object v1, v4, v0

    const/16 v0, 0x18

    aput-object v30, v4, v0

    const/16 v0, 0x19

    aput-object v31, v4, v0

    const/16 v0, 0x1a

    aput-object v32, v4, v0

    const/16 v0, 0x1b

    aput-object v2, v4, v0

    const/16 v0, 0x1c

    aput-object v33, v4, v0

    const/16 v0, 0x1d

    aput-object v34, v4, v0

    const/16 v0, 0x1e

    aput-object v35, v4, v0

    const/16 v0, 0x1f

    aput-object v7, v4, v0

    .line 33
    sput-object v4, Lcom/netease/mpay/oversea/n/h;->I:[Lcom/netease/mpay/oversea/n/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/n/h;->b:Z

    .line 6
    iput-object p4, p0, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/h;->d(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p0, :cond_0

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

.method public static c(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->B:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->A:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p0, :cond_0

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

.method public static d(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->q:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->s:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->u:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->w:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->A:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->k:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p0, :cond_0

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

.method public static e(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->r:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->u:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->s:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p0, :cond_0

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

.method public static f(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->z:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->A:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->y:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p0, :cond_0

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/h;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/n/h;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/n/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->I:[Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/n/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/n/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/n/h;->b:Z

    return-void
.end method
