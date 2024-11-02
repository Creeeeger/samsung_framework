.class public final Lcom/samsung/android/systemui/multistar/MultiStarManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar; = null

.field public static final sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

.field public static sRecentKeyConsumed:Z = false


# instance fields
.field public mMultiStarSystemFacade:Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>()V

    return-void
.end method
