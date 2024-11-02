.class public final Lcom/android/systemui/volume/util/IDisplayManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public iDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final lock:Ljava/lang/Object;

.field public final refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

.field public final refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

.field public final refreshRateToken:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->context:Landroid/content/Context;

    .line 5
    .line 6
    const-string p1, "display"

    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 17
    .line 18
    new-instance p1, Landroid/os/Binder;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateToken:Landroid/os/IBinder;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->lock:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;-><init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    .line 38
    .line 39
    new-instance p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;-><init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    .line 45
    .line 46
    return-void
.end method
