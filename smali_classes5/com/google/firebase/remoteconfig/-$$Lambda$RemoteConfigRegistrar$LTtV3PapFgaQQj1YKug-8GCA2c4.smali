.class public final synthetic Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$LTtV3PapFgaQQj1YKug-8GCA2c4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$LTtV3PapFgaQQj1YKug-8GCA2c4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$LTtV3PapFgaQQj1YKug-8GCA2c4;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$LTtV3PapFgaQQj1YKug-8GCA2c4;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$LTtV3PapFgaQQj1YKug-8GCA2c4;->INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigRegistrar$LTtV3PapFgaQQj1YKug-8GCA2c4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    move-result-object p1

    return-object p1
.end method
