.class public final Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;


# instance fields
.field public final mSakClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 5
    .line 6
    const-string v1, "/system/framework/samsungkeystoreutils.jar"

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->mSakClassLoader:Ljava/lang/ClassLoader;

    .line 16
    .line 17
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final getSakClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->mSakClassLoader:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object p0
.end method
