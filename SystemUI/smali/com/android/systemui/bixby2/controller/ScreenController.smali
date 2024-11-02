.class public Lcom/android/systemui/bixby2/controller/ScreenController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;,
        Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_BIXBY_STATE:Ljava/lang/String; = "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

.field private static final ACTION_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.ScreenshotExecutor"

.field private static final BIXBY_VIEW_ATTACHED:I = 0x1

.field private static final BIXBY_VIEW_DETACHED:I = 0x0

.field public static final EXTRA_BIXBY_VIEW_STATE:Ljava/lang/String; = "com.samsung.android.bixby.intent.extra.VIEW_STATE"

.field private static final PERMISSION_CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field private static final SCREENSHOT_ORIGIN_BIXBY:I = 0x5

.field private static final SCROLL_OFFSET:F = 1600.0f

.field private static final SEND_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ScreenController"

.field private static final TRY_COUNT:I = 0xf

.field private static final TRY_DELAY_TIME:I = 0x1f4

.field private static final TRY_INTERVAL:I = 0x12c


# instance fields
.field private final mBrightnessHandler:Landroid/os/Handler;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCurBixbyState:I

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenCaptureHandler:Landroid/os/Handler;

.field private final mScreenScrollHandler:Landroid/os/Handler;

.field private mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

.field private mScreenShotRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;

.field private final mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mTryCount:I

.field private mWinodwManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBrightnessMirrorController(Lcom/android/systemui/bixby2/controller/ScreenController;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mCurBixbyState:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mInstrumentation:Landroid/app/Instrumentation;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenCaptureHandler(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenCaptureHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenScrollHandler(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mCurBixbyState:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenScrollRunnable(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenShotRunnable(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenShotRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;

    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$misFolderClosed(Lcom/android/systemui/bixby2/controller/ScreenController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$mscrollTo(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;FII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/bixby2/controller/ScreenController;->scrollTo(Landroid/content/Context;FII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBackKey(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/Instrumentation;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mInstrumentation:Landroid/app/Instrumentation;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenCaptureHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v0, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$5;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$5;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 77
    .line 78
    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->registerBroadCastReceiver()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private getBrightnessSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/SecBrightnessMirrorControllerProvider;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mBrightnessSliderView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 30
    .line 31
    return-object p0
.end method

.method private getDisplaySizeInPixels(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 1
    new-instance p0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "window"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/WindowManager;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0
.end method

.method private injectMotionEvent(Landroid/content/Context;FFJI)V
    .locals 18

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v7, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 3
    .line 4
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v15, 0x0

    .line 10
    iput v15, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 14
    .line 15
    aput-object v1, v7, v15

    .line 16
    .line 17
    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 18
    .line 19
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 22
    .line 23
    .line 24
    move/from16 v1, p2

    .line 25
    .line 26
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 27
    .line 28
    move/from16 v1, p3

    .line 29
    .line 30
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 31
    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    move/from16 v5, p6

    .line 35
    .line 36
    if-ne v5, v2, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v1

    .line 41
    :goto_0
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 42
    .line 43
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 44
    .line 45
    aput-object v0, v8, v15

    .line 46
    .line 47
    const/4 v13, 0x4

    .line 48
    const/4 v14, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 51
    .line 52
    const v1, 0x1d4c0

    .line 53
    .line 54
    .line 55
    const/high16 v12, 0x800000

    .line 56
    .line 57
    if-ge v0, v1, :cond_1

    .line 58
    .line 59
    const/high16 v0, -0x80000000

    .line 60
    .line 61
    move/from16 v16, v0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move/from16 v16, v12

    .line 65
    .line 66
    :goto_1
    const/4 v6, 0x1

    .line 67
    const/4 v10, 0x0

    .line 68
    const/high16 v11, 0x3f800000    # 1.0f

    .line 69
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    move-wide/from16 v1, p4

    .line 75
    .line 76
    move-wide/from16 v3, p4

    .line 77
    .line 78
    move/from16 v5, p6

    .line 79
    .line 80
    move v12, v0

    .line 81
    move v0, v15

    .line 82
    move/from16 v15, v17

    .line 83
    .line 84
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/16 v2, 0x1002

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 91
    .line 92
    .line 93
    const/high16 v2, 0x800000

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 96
    .line 97
    .line 98
    const-string v2, "input"

    .line 99
    .line 100
    move-object/from16 v3, p1

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/hardware/input/InputManager;

    .line 107
    .line 108
    invoke-virtual {v2, v1, v0}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private isDesktopMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const-string p0, "ScreenController"

    .line 29
    .line 30
    const-string v0, "It is dex mode"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method private isFolderClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 4
    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method private isPanelBarExpanded(Landroid/content/Context;)Z
    .locals 0

    .line 1
    const-class p0, Landroid/app/SemStatusBarManager;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/SemStatusBarManager;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private lerp(FFF)F
    .locals 0

    .line 1
    invoke-static {p2, p1, p3, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private registerBroadCastReceiver()V
    .locals 2

    .line 1
    const-string v0, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private scrollTo(Landroid/content/Context;FII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p3

    .line 4
    .line 5
    move/from16 v9, p4

    .line 6
    .line 7
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getDisplaySizeInPixels(Landroid/content/Context;)Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v10, 0x5

    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    if-ge v9, v10, :cond_0

    .line 15
    .line 16
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    const v4, 0x3f19999a    # 0.6f

    .line 20
    .line 21
    .line 22
    mul-float/2addr v3, v4

    .line 23
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 24
    .line 25
    :goto_0
    int-to-float v1, v1

    .line 26
    div-float/2addr v1, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    div-float/2addr v3, v2

    .line 32
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    move v11, v1

    .line 36
    move v12, v3

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v13

    .line 41
    const/4 v7, 0x0

    .line 42
    move-object/from16 v1, p0

    .line 43
    .line 44
    move-object/from16 v2, p1

    .line 45
    .line 46
    move v3, v12

    .line 47
    move v4, v11

    .line 48
    move-wide v5, v13

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bixby2/controller/ScreenController;->injectMotionEvent(Landroid/content/Context;FFJI)V

    .line 50
    .line 51
    .line 52
    int-to-long v1, v8

    .line 53
    add-long v15, v13, v1

    .line 54
    .line 55
    if-ge v9, v10, :cond_1

    .line 56
    .line 57
    add-float v1, v11, p2

    .line 58
    .line 59
    move v10, v1

    .line 60
    move v9, v12

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-float v1, v12, p2

    .line 63
    .line 64
    move v9, v1

    .line 65
    move v10, v11

    .line 66
    :goto_2
    move-wide v5, v13

    .line 67
    :goto_3
    cmp-long v1, v5, v15

    .line 68
    .line 69
    if-gez v1, :cond_2

    .line 70
    .line 71
    sub-long v1, v5, v13

    .line 72
    .line 73
    long-to-float v1, v1

    .line 74
    int-to-float v2, v8

    .line 75
    div-float/2addr v1, v2

    .line 76
    invoke-direct {v0, v12, v9, v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->lerp(FFF)F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {v0, v11, v10, v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->lerp(FFF)F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v7, 0x2

    .line 85
    move-object/from16 v1, p0

    .line 86
    .line 87
    move-object/from16 v2, p1

    .line 88
    .line 89
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bixby2/controller/ScreenController;->injectMotionEvent(Landroid/content/Context;FFJI)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    const/4 v7, 0x1

    .line 98
    move-object/from16 v1, p0

    .line 99
    .line 100
    move-object/from16 v2, p1

    .line 101
    .line 102
    move v3, v9

    .line 103
    move v4, v10

    .line 104
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bixby2/controller/ScreenController;->injectMotionEvent(Landroid/content/Context;FFJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :goto_4
    return-void
.end method

.method private sendBackKey(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/bixby2/controller/ScreenController$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController$3;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenShotRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenShotRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenShotRunnable;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenCaptureHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const-wide/16 p1, 0x1f4

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "ScreenController"

    .line 24
    .line 25
    const-string p1, "Another screenshot is doing."

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private startScreenScrollRunnable(Landroid/content/Context;FII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move v4, p2

    .line 14
    move v5, p3

    .line 15
    move v6, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;FII)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollHandler:Landroid/os/Handler;

    .line 22
    .line 23
    const-wide/16 p1, 0x1f4

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "ScreenController"

    .line 30
    .line 31
    const-string p1, "Another ScreenScroll is doing."

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private startSubHomeActivity(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$1;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public closePanelScreen(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "statusbar"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->isPanelBarExpanded(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/android/systemui/bixby2/controller/ScreenController$4;

    .line 21
    .line 22
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController$4;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x5dc

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public getBrightnessBarInfo(Landroid/content/Context;)[I
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-class p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 24
    .line 25
    const p1, 0x7f0a0b10

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessSeekBar()Landroid/widget/SeekBar;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr p1, v0

    .line 52
    mul-int/lit8 p1, p1, 0x64

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v0, v1

    .line 63
    div-int/2addr p1, v0

    .line 64
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    mul-int/lit8 v0, v0, 0x64

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    sub-int/2addr v1, p0

    .line 79
    div-int/2addr v0, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 p1, 0x32

    .line 82
    .line 83
    const/4 v0, 0x5

    .line 84
    :goto_1
    filled-new-array {p1, v0}, [I

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method public goToHomeScreen(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 2
    .line 3
    const-string v1, "ScreenController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "goToSubHomeScreen()"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->startSubHomeActivity(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "goToHomeScreen()"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v0, "android.intent.action.MAIN"

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "android.intent.category.HOME"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/high16 v0, 0x10200000

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const-string v0, "extra_close_all_open_views"

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo p1, "sub_screen_brightness_mode"

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const-string p1, "SUB_SCREEN_BRIGHTNESS_MODE = "

    .line 14
    .line 15
    const-string v1, "ScreenController"

    .line 16
    .line 17
    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    move v0, p1

    .line 24
    :cond_0
    return v0
.end method

.method public pressBackKey(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string p1, "ScreenController"

    .line 2
    .line 3
    const-string/jumbo v0, "pressBackKey()"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isDesktopMode()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$2;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public screenScroll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "direction"

    .line 2
    .line 3
    const-string v1, "level"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    move-object v4, v2

    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge p2, v5, :cond_2

    .line 20
    .line 21
    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_0
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p2

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p2

    .line 53
    move-object v4, v2

    .line 54
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_2
    move-object p2, v2

    .line 58
    move-object v2, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object p2, v2

    .line 61
    :goto_2
    const-string/jumbo v0, "up"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const-string v0, "down"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const-string v0, "left"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    const/4 v0, 0x5

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    const-string/jumbo v0, "right"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    const/4 v0, 0x6

    .line 102
    :goto_3
    const-string/jumbo v1, "max"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_7

    .line 110
    .line 111
    add-int/lit8 v0, v0, 0x2

    .line 112
    .line 113
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getDisplaySizeInPixels(Landroid/content/Context;)Landroid/graphics/Point;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 118
    .line 119
    int-to-float p2, p2

    .line 120
    const v1, 0x3f19999a    # 0.6f

    .line 121
    .line 122
    .line 123
    mul-float/2addr p2, v1

    .line 124
    const v1, -0x37e3c000    # -160000.0f

    .line 125
    .line 126
    .line 127
    const v2, 0x481c4000    # 160000.0f

    .line 128
    .line 129
    .line 130
    const/16 v3, 0x3e8

    .line 131
    .line 132
    const/16 v4, 0x190

    .line 133
    .line 134
    packed-switch v0, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :pswitch_0
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :pswitch_1
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :pswitch_2
    neg-float p2, p2

    .line 147
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :pswitch_3
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :pswitch_4
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :pswitch_5
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :pswitch_6
    neg-float p2, p2

    .line 164
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :pswitch_7
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    .line 169
    .line 170
    .line 171
    :goto_4
    return-void

    .line 172
    :cond_8
    const-string p0, "ScreenController"

    .line 173
    .line 174
    const-string p1, "No valid direction"

    .line 175
    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoBrightnessCover(Landroid/content/Context;Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setAutoBrightnessCover enable = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "ScreenController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p0, p2, :cond_0

    .line 26
    .line 27
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    const-string p2, "already_set"

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string/jumbo p1, "sub_screen_brightness_mode"

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    const-string/jumbo p2, "success"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public setBrightness(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    .line 1
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 18
    .line 19
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-class p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 46
    .line 47
    const v2, 0x7f0a0b10

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessSeekBar()Landroid/widget/SeekBar;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_0
    if-nez p1, :cond_2

    .line 64
    .line 65
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 66
    .line 67
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    mul-int/2addr v2, p2

    .line 81
    div-int/lit8 v2, v2, 0x64

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    .line 84
    .line 85
    .line 86
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    add-int/2addr v2, p2

    .line 88
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v2, p2, v3}, Landroid/util/MathUtils;->constrain(III)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-ne p2, v2, :cond_3

    .line 108
    .line 109
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 110
    .line 111
    const-string p1, "already_set"

    .line 112
    .line 113
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_3
    const-string/jumbo v1, "statusbar"

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v2, "ScreenController"

    .line 136
    .line 137
    const-string v3, "expand panel RemoteException "

    .line 138
    .line 139
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    .line 143
    .line 144
    new-instance v2, Lcom/android/systemui/bixby2/controller/ScreenController$6;

    .line 145
    .line 146
    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/bixby2/controller/ScreenController$6;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/widget/SeekBar;I)V

    .line 147
    .line 148
    .line 149
    const-wide/16 p1, 0x7d0

    .line 150
    .line 151
    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    .line 155
    .line 156
    new-instance p2, Lcom/android/systemui/bixby2/controller/ScreenController$7;

    .line 157
    .line 158
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/bixby2/controller/ScreenController$7;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 159
    .line 160
    .line 161
    const-wide/16 v0, 0x1388

    .line 162
    .line 163
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    .line 165
    .line 166
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 167
    .line 168
    const/4 p1, 0x1

    .line 169
    const-string/jumbo p2, "success"

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :catch_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 177
    .line 178
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-object p0
.end method

.method public shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.capture.ScreenshotExecutor"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "capturedOrigin"

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public takeScreenShot(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.capture.ScreenshotExecutor"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "capturedOrigin"

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public takeScreenShotUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.capture.ScreenshotExecutor"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "capturedOrigin"

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method
