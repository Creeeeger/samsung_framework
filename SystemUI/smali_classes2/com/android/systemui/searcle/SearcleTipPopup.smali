.class public final Lcom/android/systemui/searcle/SearcleTipPopup;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BUBBLE_ALPHA_DURATION:I

.field public static final DEST_SCALE:F

.field public static final ELASTIC_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final INIT_SCALE:F

.field public static final POSITION_DURATION:I

.field public static final SCALE_DURATION:I

.field public static final SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_70_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TEXT_ALPHA_DURATION:I


# instance fields
.field public final closeAnimList:Ljava/util/ArrayList;

.field public closeAnimSet:Landroid/animation/AnimatorSet;

.field public final context:Landroid/content/Context;

.field public final defaultDisplay:Landroid/view/Display;

.field public final handler:Landroid/os/Handler;

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public isTipPopupShowing:Z

.field public navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final onAttachStateChangeListener:Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

.field public final openAnimList:Ljava/util/ArrayList;

.field public openAnimSet:Landroid/animation/AnimatorSet;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/searcle/SearcleTipPopup$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/searcle/SearcleTipPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x3ea3d70a    # 0.32f

    .line 8
    .line 9
    .line 10
    sput v0, Lcom/android/systemui/searcle/SearcleTipPopup;->INIT_SCALE:F

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    sput v0, Lcom/android/systemui/searcle/SearcleTipPopup;->DEST_SCALE:F

    .line 15
    .line 16
    const/16 v1, 0xa7

    .line 17
    .line 18
    sput v1, Lcom/android/systemui/searcle/SearcleTipPopup;->POSITION_DURATION:I

    .line 19
    .line 20
    sput v1, Lcom/android/systemui/searcle/SearcleTipPopup;->SCALE_DURATION:I

    .line 21
    .line 22
    const/16 v2, 0x53

    .line 23
    .line 24
    sput v2, Lcom/android/systemui/searcle/SearcleTipPopup;->BUBBLE_ALPHA_DURATION:I

    .line 25
    .line 26
    sput v1, Lcom/android/systemui/searcle/SearcleTipPopup;->TEXT_ALPHA_DURATION:I

    .line 27
    .line 28
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 29
    .line 30
    const v2, 0x3fa66666    # 1.3f

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/android/systemui/searcle/SearcleTipPopup;->ELASTIC_CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 37
    .line 38
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 39
    .line 40
    const v2, 0x3e99999a    # 0.3f

    .line 41
    .line 42
    .line 43
    const v3, 0x3ea8f5c3    # 0.33f

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v1, v3, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 48
    .line 49
    .line 50
    sput-object v1, Lcom/android/systemui/searcle/SearcleTipPopup;->SINE_IN_OUT_70_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 53
    .line 54
    const v2, 0x3f2b851f    # 0.67f

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v3, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcom/android/systemui/searcle/SearcleTipPopup;->SINE_IN_OUT_33_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    const-string/jumbo v0, "window"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    instance-of v0, p1, Landroid/view/WindowManager;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p1, Landroid/view/WindowManager;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->windowManager:Landroid/view/WindowManager;

    .line 33
    .line 34
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->defaultDisplay:Landroid/view/Display;

    .line 48
    .line 49
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimList:Ljava/util/ArrayList;

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimList:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance p1, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->onAttachStateChangeListener:Lcom/android/systemui/searcle/SearcleTipPopup$onAttachStateChangeListener$1;

    .line 79
    .line 80
    return-void
.end method

.method public static varargs initProperty(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v3, p0, v2}, Lcom/android/systemui/searcle/SearcleTipPopup;->updateProperty(FILandroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return-void
.end method

.method public static updateProperty(FILandroid/view/View;)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    neg-float p0, p0

    .line 6
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_2
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_4
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_5
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_6
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBubbleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f0a095f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0
.end method

.method public final hide()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 2
    .line 3
    const-string v1, "hide isTipPopupShowing = "

    .line 4
    .line 5
    const-string v2, "SearcleTipPopup"

    .line 6
    .line 7
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimSet:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final hideImmediate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v1, v0, [Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const v4, 0x7f0a0960

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v3

    .line 29
    :goto_0
    const/4 v4, 0x1

    .line 30
    aput-object v2, v1, v4

    .line 31
    .line 32
    invoke-static {v4, v1}, Lcom/android/systemui/searcle/SearcleTipPopup;->initProperty(I[Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    filled-new-array {v1}, [Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-static {v2, v1}, Lcom/android/systemui/searcle/SearcleTipPopup;->initProperty(I[Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    filled-new-array {v1}, [Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x6

    .line 56
    invoke-static {v2, v1}, Lcom/android/systemui/searcle/SearcleTipPopup;->initProperty(I[Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->getBubbleLayout()Landroid/widget/LinearLayout;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    filled-new-array {v1}, [Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/android/systemui/searcle/SearcleTipPopup;->initProperty(I[Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->windowManager:Landroid/view/WindowManager;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimList:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    .line 92
    .line 93
    iput-object v3, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->openAnimSet:Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    iput-object v3, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->closeAnimSet:Landroid/animation/AnimatorSet;

    .line 96
    .line 97
    iput-object v3, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->tipLayout:Lcom/android/systemui/searcle/SearcleTipView;

    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method public final makeAnimator(Landroid/view/View;IIFFLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p4, v0, v1

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    aput p5, v0, p4

    .line 9
    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    int-to-long v2, p3

    .line 17
    invoke-virtual {p4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    int-to-long v0, v1

    .line 21
    invoke-virtual {p4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    .line 26
    .line 27
    new-instance p3, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;

    .line 28
    .line 29
    invoke-direct {p3, p0, p1, p2}, Lcom/android/systemui/searcle/SearcleTipPopup$makeAnimator$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p4
.end method

.method public final showSearcleTip(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "showSearcleTip isRetryShowing = "

    .line 2
    .line 3
    .line 4
    const-string v1, "SearcleTipPopup"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/searcle/SearcleTipPopup$showSearcleTip$1;-><init>(Lcom/android/systemui/searcle/SearcleTipPopup;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
