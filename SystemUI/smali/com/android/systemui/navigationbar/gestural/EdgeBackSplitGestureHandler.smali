.class public final Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

.field public static final SAFE_DEBUG:Z


# instance fields
.field public final context:Landroid/content/Context;

.field public final displayController:Lcom/android/wm/shell/common/DisplayController;

.field public final displayId:I

.field public enabled:Z

.field public gestureDetected:Z

.field public final gestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public inputMonitor:Landroid/view/InputMonitor;

.field public final settingsCallBack:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$settingsCallBack$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final tmpBounds:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->Companion:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$Companion;

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "eng"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string/jumbo v2, "userdebug"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    or-int/2addr v0, v1

    .line 25
    sput-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->SAFE_DEBUG:Z

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    new-instance p2, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->tmpBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$settingsCallBack$1;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$settingsCallBack$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->settingsCallBack:Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$settingsCallBack$1;

    .line 23
    .line 24
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_MW_ENTER_SPLIT_USING_GESTURE:Z

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p2, 0x0

    .line 55
    :goto_0
    if-eqz p2, :cond_2

    .line 56
    .line 57
    sget-object p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->Companion:Lcom/android/systemui/SystemUIAppComponentFactoryBase$Companion;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 63
    .line 64
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-interface {p3}, Lcom/android/systemui/dagger/WMComponent;->getDisplayController()Ljava/util/Optional;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Lcom/android/wm/shell/common/DisplayController;

    .line 86
    .line 87
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->displayController:Lcom/android/wm/shell/common/DisplayController;

    .line 88
    .line 89
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/SystemUIInitializer;->getWMComponent()Lcom/android/systemui/dagger/WMComponent;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-interface {p2}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_2

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 108
    .line 109
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 110
    .line 111
    :cond_2
    new-instance p2, Landroid/view/TwoFingerSwipeGestureDetector;

    .line 112
    .line 113
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;

    .line 114
    .line 115
    invoke-direct {p3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "EdgeBack"

    .line 119
    .line 120
    invoke-direct {p2, p1, p3, v0}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackSplitGestureHandler;->gestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 124
    .line 125
    return-void
.end method
