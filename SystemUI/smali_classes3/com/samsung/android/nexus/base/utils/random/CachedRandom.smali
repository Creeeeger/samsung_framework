.class public abstract Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;


# instance fields
.field public final mCacheSize:I

.field public mIndex:I

.field public final mIndexLimit:I

.field public final mMax:D

.field public final mMin:D

.field public mNeedRefresh:Z

.field public mRewind:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x186a0

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    .line 8
    .line 9
    const v0, 0x1869f

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndexLimit:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    .line 23
    .line 24
    iput-wide p3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->onCreate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public abstract onCreate()V
.end method
