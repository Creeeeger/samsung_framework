.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final actionHandlerTypes:Ljava/util/Map;

.field public callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

.field public doubleTapDownEvent:Landroid/view/MotionEvent;

.field public final doubleTapSlop:I

.field public dozeAmount:F

.field public final dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

.field public final dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

.field public final editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

.field public final fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public final keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

.field public notiScale:F

.field public final parentView$delegate:Lkotlin/Lazy;

.field public final pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

.field public final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

.field public viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

.field public final views:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/SecRotationWatcher;)V
    .locals 10

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v8, p8

    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 5
    .line 6
    .line 7
    move-object v0, p4

    .line 8
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    .line 10
    move-object v0, p5

    .line 11
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 12
    .line 13
    move-object/from16 v0, p6

    .line 14
    .line 15
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    .line 16
    .line 17
    move-object/from16 v0, p7

    .line 18
    .line 19
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 20
    .line 21
    iput-object v8, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 22
    .line 23
    move-object/from16 v6, p9

    .line 24
    .line 25
    iput-object v6, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    move-object/from16 v2, p10

    .line 28
    .line 29
    iput-object v2, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 30
    .line 31
    move-object/from16 v3, p11

    .line 32
    .line 33
    iput-object v3, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 34
    .line 35
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 52
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->actionHandlerTypes:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 73
    .line 74
    new-instance v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 80
    .line 81
    new-instance v9, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 82
    .line 83
    move-object v0, v9

    .line 84
    move-object v1, p0

    .line 85
    move-object v4, p2

    .line 86
    move-object/from16 v5, p12

    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;)V

    .line 89
    .line 90
    .line 91
    iput-object v9, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 92
    .line 93
    new-instance v0, Lcom/android/systemui/keyguard/animator/DragViewController;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/DragViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v8, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapSlop:I

    .line 120
    .line 121
    new-instance v0, Landroid/view/GestureDetector;

    .line 122
    .line 123
    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;

    .line 124
    .line 125
    move-object v2, p2

    .line 126
    move-object v3, p3

    .line 127
    invoke-direct {v1, p0, p2, p3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;)V

    .line 128
    .line 129
    .line 130
    move-object v2, p1

    .line 131
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->gestureDetector:Landroid/view/GestureDetector;

    .line 135
    .line 136
    return-void
.end method

.method public static showViewState(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v4, "v="

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " alpha="

    .line 25
    .line 26
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " scale="

    .line 33
    .line 34
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ","

    .line 41
    .line 42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "KeyguardTouchAnimator"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final canLongPressArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isFingerprintArea(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 10
    .line 11
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->longPressAllowHeight:I

    .line 26
    .line 27
    sub-int/2addr v0, p0

    .line 28
    int-to-float p0, v0

    .line 29
    cmpg-float p0, p1, p0

    .line 30
    .line 31
    if-gez p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, p0

    .line 23
    :goto_0
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 24
    .line 25
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 26
    .line 27
    const v1, 0x7f0a0516

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 37
    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v1, p0

    .line 42
    :goto_1
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    .line 45
    .line 46
    goto/16 :goto_a

    .line 47
    .line 48
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 49
    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    move-object p0, v1

    .line 53
    :cond_3
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 56
    .line 57
    if-eqz p0, :cond_11

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 60
    .line 61
    :goto_2
    move-object v1, p0

    .line 62
    goto/16 :goto_a

    .line 63
    .line 64
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 65
    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    move-object p0, v1

    .line 69
    :cond_4
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 74
    .line 75
    if-nez p0, :cond_5

    .line 76
    .line 77
    move-object p0, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    .line 80
    .line 81
    :goto_3
    if-eqz p0, :cond_11

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :cond_6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroid/view/View;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 99
    .line 100
    if-nez p0, :cond_7

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_7
    move-object v1, p0

    .line 104
    :goto_4
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 105
    .line 106
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 107
    .line 108
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecViewController;->getLockIconContainer()Landroid/view/ViewGroup;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto/16 :goto_a

    .line 113
    .line 114
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 115
    .line 116
    if-nez p0, :cond_8

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_8
    move-object v1, p0

    .line 120
    :goto_5
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 121
    .line 122
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->indicationArea$delegate:Lkotlin/Lazy;

    .line 125
    .line 126
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    move-object v1, p0

    .line 131
    check-cast v1, Landroid/view/ViewGroup;

    .line 132
    .line 133
    goto/16 :goto_a

    .line 134
    .line 135
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 136
    .line 137
    if-nez p0, :cond_9

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_9
    move-object v1, p0

    .line 141
    :goto_6
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 142
    .line 143
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto :goto_a

    .line 150
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 151
    .line 152
    if-nez p0, :cond_a

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_a
    move-object v1, p0

    .line 156
    :goto_7
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 157
    .line 158
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    goto :goto_a

    .line 165
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 166
    .line 167
    if-nez p0, :cond_b

    .line 168
    .line 169
    move-object p0, v1

    .line 170
    :cond_b
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 177
    .line 178
    if-eqz p0, :cond_11

    .line 179
    .line 180
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    goto :goto_2

    .line 185
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 186
    .line 187
    if-nez p0, :cond_c

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_c
    move-object v1, p0

    .line 191
    :goto_8
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 192
    .line 193
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 196
    .line 197
    goto :goto_a

    .line 198
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 199
    .line 200
    if-nez p0, :cond_d

    .line 201
    .line 202
    move-object p0, v1

    .line 203
    :cond_d
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 208
    .line 209
    if-nez p0, :cond_e

    .line 210
    .line 211
    goto :goto_a

    .line 212
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    .line 213
    .line 214
    if-eqz v1, :cond_f

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 221
    .line 222
    if-nez p0, :cond_10

    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_10
    move-object v1, p0

    .line 226
    :goto_9
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 227
    .line 228
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 229
    .line 230
    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 231
    .line 232
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_12
    const/4 v2, 0x0

    .line 237
    :goto_b
    return v2

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method

.method public final isViRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return v3

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 34
    .line 35
    const-string v2, "double_tap_to_sleep"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v3, :cond_3

    .line 46
    .line 47
    move v0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v0, v1

    .line 50
    :goto_1
    if-eqz v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    and-int/lit16 v0, v0, 0x3002

    .line 57
    .line 58
    const/16 v2, 0x1002

    .line 59
    .line 60
    if-ne v0, v2, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ne v0, v3, :cond_4

    .line 67
    .line 68
    move v0, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v0, v1

    .line 71
    :goto_2
    if-eqz v0, :cond_6

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->gestureDetector:Landroid/view/GestureDetector;

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 89
    .line 90
    aget v0, v2, v0

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    if-ne v0, v2, :cond_7

    .line 94
    .line 95
    move v1, v3

    .line 96
    :cond_7
    if-eqz v1, :cond_8

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 99
    .line 100
    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-interface {v0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 107
    .line 108
    .line 109
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->actionHandlerTypes:Ljava/util/Map;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-nez v2, :cond_d

    .line 126
    .line 127
    sget-object v2, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->Companion:Lcom/android/systemui/keyguard/animator/ActionHandlerType$Companion;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    if-eqz v4, :cond_c

    .line 137
    .line 138
    if-eq v4, v3, :cond_b

    .line 139
    .line 140
    const/4 v2, 0x2

    .line 141
    if-eq v4, v2, :cond_a

    .line 142
    .line 143
    const/4 v2, 0x3

    .line 144
    if-eq v4, v2, :cond_b

    .line 145
    .line 146
    const/4 v2, 0x5

    .line 147
    if-eq v4, v2, :cond_9

    .line 148
    .line 149
    const/4 v2, 0x6

    .line 150
    if-eq v4, v2, :cond_b

    .line 151
    .line 152
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionDefaultHandler;

    .line 153
    .line 154
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionDefaultHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionPointerDownHandler;

    .line 159
    .line 160
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionPointerDownHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_a
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionMoveHandler;

    .line 165
    .line 166
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionMoveHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_b
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler;

    .line 171
    .line 172
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_c
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionDownHandler;

    .line 177
    .line 178
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionDownHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    :cond_d
    check-cast v2, Lcom/android/systemui/keyguard/animator/ActionHandlerType;

    .line 185
    .line 186
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    return p0
.end method

.method public final reset()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 2
    .line 3
    const-string/jumbo v1, "reset unlockExecuted="

    .line 4
    .line 5
    .line 6
    const-string v2, "KeyguardTouchAnimator"

    .line 7
    .line 8
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    .line 41
    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 80
    .line 81
    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 84
    .line 85
    .line 86
    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    const-string/jumbo v3, "reset mFullScreenModeEnabled true"

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    .line 97
    .line 98
    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getParentView()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    .line 110
    .line 111
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const-string/jumbo v3, "reset "

    .line 128
    .line 129
    .line 130
    const-string v4, "KeyguardEditModeAnimatorController"

    .line 131
    .line 132
    invoke-static {v3, v2, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 136
    .line 137
    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 138
    .line 139
    const/4 v3, 0x4

    .line 140
    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setThumbnailVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 144
    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    invoke-virtual {v2}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    const/4 v3, 0x1

    .line 152
    if-ne v2, v3, :cond_3

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    move v3, v1

    .line 156
    :goto_2
    if-eqz v3, :cond_4

    .line 157
    .line 158
    const-string v2, "longPressJob?.cancel"

    .line 159
    .line 160
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 182
    .line 183
    .line 184
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_6

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_6

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 200
    .line 201
    if-eqz v0, :cond_7

    .line 202
    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 204
    .line 205
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 209
    .line 210
    .line 211
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 215
    .line 216
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 219
    .line 220
    const/high16 v0, -0x40800000    # -1.0f

    .line 221
    .line 222
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 223
    .line 224
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 225
    .line 226
    return-void
.end method

.method public final resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 2
    .line 3
    const-string/jumbo v1, "resetChildViewVI(): "

    .line 4
    .line 5
    .line 6
    const-string v2, "KeyguardTouchAnimator"

    .line 7
    .line 8
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 21
    .line 22
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/View;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showViewState(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 32
    .line 33
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string/jumbo p0, "resetChildViewVI vIRunning"

    .line 42
    .line 43
    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    .line 50
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_0
    if-ge v3, v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/view/View;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-static {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showViewState(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method public final restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/animator/DragViewController;->createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/DragViewController;I)Landroid/animation/AnimatorSet;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/DragViewController;->dragViews:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    move-object v5, v4

    .line 45
    check-cast v5, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 62
    .line 63
    const/16 v4, 0xa

    .line 64
    .line 65
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v5, 0x0

    .line 114
    if-eqz v4, :cond_6

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    move-object v6, v4

    .line 121
    check-cast v6, Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_5

    .line 128
    .line 129
    move v5, v0

    .line 130
    :cond_5
    if-eqz v5, :cond_4

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    const/high16 v3, 0x3f800000    # 1.0f

    .line 145
    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Landroid/view/View;

    .line 153
    .line 154
    invoke-static {v1, v2, v3, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->hasView(I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->getView(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const/high16 v0, -0x40800000    # -1.0f

    .line 169
    .line 170
    invoke-static {v1, p0, v0, v3}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_9
    :goto_4
    const-string/jumbo p0, "restoreChildViewVI(): "

    .line 178
    .line 179
    .line 180
    const-string v1, "KeyguardTouchAnimator"

    .line 181
    .line 182
    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final updateAffordace(Landroid/view/DisplayInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 7
    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    iput v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotX:I

    .line 11
    .line 12
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 13
    .line 14
    div-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iput p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    .line 17
    .line 18
    return-void
.end method
