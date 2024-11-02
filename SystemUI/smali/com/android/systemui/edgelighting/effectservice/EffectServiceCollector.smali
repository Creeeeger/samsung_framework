.class public final Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;


# instance fields
.field public final mEdgeLightingStyleList:Ljava/util/ArrayList;

.field public final mElpStyleList:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.systemui.notilus.NotiCenterContentProvider/edgelighting_plus_effect"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mElpStyleList:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$1;-><init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;-><init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mInstance:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    .line 13
    .line 14
    return-object v0
.end method
