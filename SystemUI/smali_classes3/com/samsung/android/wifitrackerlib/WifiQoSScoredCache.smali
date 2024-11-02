.class public final Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCache:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    .line 19
    .line 20
    const-string v0, "sem_wifi"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mListener:Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;

    .line 31
    .line 32
    new-instance p1, Lcom/samsung/android/wifitrackerlib/LogUtils;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/samsung/android/wifitrackerlib/LogUtils;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    .line 38
    .line 39
    return-void
.end method
