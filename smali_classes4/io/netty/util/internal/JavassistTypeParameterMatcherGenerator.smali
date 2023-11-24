.class public final Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;
.super Ljava/lang/Object;
.source "JavassistTypeParameterMatcherGenerator.java"


# static fields
.field private static final classPool:Ljavassist/ClassPool;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-class v0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 35
    new-instance v0, Ljavassist/ClassPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljavassist/ClassPool;-><init>(Z)V

    sput-object v0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->classPool:Ljavassist/ClassPool;

    .line 38
    sget-object v0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->classPool:Ljavassist/ClassPool;

    new-instance v1, Ljavassist/ClassClassPath;

    const-class v2, Lio/netty/util/internal/NoOpTypeParameterMatcher;

    invoke-direct {v1, v2}, Ljavassist/ClassClassPath;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendClassPath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 46
    sget-object v0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p0}, Ljavassist/ClassPool;->appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;

    return-void
.end method

.method public static appendClassPath(Ljavassist/ClassPath;)V
    .locals 1

    .line 42
    sget-object v0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, p0}, Ljavassist/ClassPool;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    return-void
.end method

.method public static generate(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/netty/util/internal/TypeParameterMatcher;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 54
    :cond_0
    invoke-static {p0, v0}, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->generate(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lio/netty/util/internal/TypeParameterMatcher;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lio/netty/util/internal/TypeParameterMatcher;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io.netty.util.internal.__matchers__."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Matcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 62
    :try_start_0
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/TypeParameterMatcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    goto/16 :goto_0

    .line 67
    :catch_1
    :try_start_1
    sget-object v3, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->classPool:Ljavassist/ClassPool;

    const-class v4, Lio/netty/util/internal/NoOpTypeParameterMatcher;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljavassist/ClassPool;->getAndRename(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljavassist/CtClass;->getModifiers()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Ljavassist/CtClass;->setModifiers(I)V

    const-string v4, "match"

    .line 69
    invoke-virtual {v3, v4}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{ return $1 instanceof "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; }"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavassist/CtMethod;->setBody(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0

    .line 71
    invoke-virtual {v3}, Ljavassist/CtClass;->detach()V

    .line 72
    const-class v3, Ljava/lang/ClassLoader;

    const-string v4, "defineClass"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, [B

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v8

    aput-object v0, v4, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 77
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 78
    sget-object p0, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "Generated: {}"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/internal/TypeParameterMatcher;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 84
    :goto_0
    throw p0
.end method

.method private static typeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->typeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
