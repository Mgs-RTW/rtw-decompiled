.class public final Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
.super Ljava/lang/Object;
.source "FlexImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backgroundColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->flex:I

    .line 176
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)I
    .locals 0

    .line 145
    iget p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->flex:I

    return p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    return-object p0
.end method

.method static synthetic access$800(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->backgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;
    .locals 2

    .line 284
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$1;)V

    return-object v0
.end method

.method public setAction(Lcom/linecorp/linesdk/message/flex/action/Action;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/action/Action;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 274
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method

.method public setAlign(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-object p0
.end method

.method public setAspectMode(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    return-object p0
.end method

.method public setAspectRatio(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object p0
.end method

.method public setBackgroundColor(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->backgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method public setFlex(I)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0

    .line 186
    iput p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->flex:I

    return-object p0
.end method

.method public setGravity(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-object p0
.end method

.method public setMargin(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method public setSize(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method
