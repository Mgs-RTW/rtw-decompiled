.class final Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$1;
.super Ljava/lang/Object;
.source "LineAuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 2

    .line 22
    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;-><init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 0

    .line 27
    new-array p1, p1, [Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$1;->newArray(I)[Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    move-result-object p1

    return-object p1
.end method
