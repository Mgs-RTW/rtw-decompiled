.class public final synthetic Lcom/facebook/appevents/ondeviceprocessing/-$$Lambda$OnDeviceProcessingManager$6zAc79UpPGdEEZiXgVsq7HYMOsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Lcom/facebook/appevents/AppEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/ondeviceprocessing/-$$Lambda$OnDeviceProcessingManager$6zAc79UpPGdEEZiXgVsq7HYMOsM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/ondeviceprocessing/-$$Lambda$OnDeviceProcessingManager$6zAc79UpPGdEEZiXgVsq7HYMOsM;->f$1:Lcom/facebook/appevents/AppEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/ondeviceprocessing/-$$Lambda$OnDeviceProcessingManager$6zAc79UpPGdEEZiXgVsq7HYMOsM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/ondeviceprocessing/-$$Lambda$OnDeviceProcessingManager$6zAc79UpPGdEEZiXgVsq7HYMOsM;->f$1:Lcom/facebook/appevents/AppEvent;

    invoke-static {v0, v1}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->lambda$6zAc79UpPGdEEZiXgVsq7HYMOsM(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    return-void
.end method
