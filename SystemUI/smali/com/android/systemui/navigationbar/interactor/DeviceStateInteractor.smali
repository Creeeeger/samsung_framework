.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final componentCallbacks:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

.field public final context:Landroid/content/Context;

.field public coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

.field public coverTaskCache:Z

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final displayListener:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public foldCache:Z

.field public foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final handler:Landroid/os/Handler;

.field public largeCoverRotationCallback:Ljava/util/function/Consumer;

.field public lastCoverRotation:I

.field public lastRotation:I

.field public multimodalTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final windowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 17
    .line 18
    const-string p2, "display"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayListener:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

    .line 34
    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->handler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p2, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->windowContext:Landroid/content/Context;

    .line 73
    .line 74
    new-instance p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->componentCallbacks:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

    .line 80
    .line 81
    return-void
.end method
