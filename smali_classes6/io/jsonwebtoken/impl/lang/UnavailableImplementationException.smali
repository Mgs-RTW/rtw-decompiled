.class public final Lio/jsonwebtoken/impl/lang/UnavailableImplementationException;
.super Ljava/lang/RuntimeException;
.source "UnavailableImplementationException.java"


# static fields
.field private static final DEFAULT_NOT_FOUND_MESSAGE:Ljava/lang/String; = "Unable to find an implementation for %s using java.util.ServiceLoader. Ensure you include a backing implementation .jar in the classpath, for example jjwt-impl.jar, or your own .jar for custom implementations."


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3

    const-string v0, "Unable to find an implementation for %s using java.util.ServiceLoader. Ensure you include a backing implementation .jar in the classpath, for example jjwt-impl.jar, or your own .jar for custom implementations."

    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
