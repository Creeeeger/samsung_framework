.class public Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.super Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final mBlockNotiTouch_for_NA:Z


# instance fields
.field public FREEFORM_HEIGHT_RATIO:F

.field public FREEFORM_WIDTH_RATIO:F

.field public final TAG:Ljava/lang/String;

.field public dreamManager:Landroid/service/dreams/IDreamManager;

.field public mAODManager:Lcom/samsung/android/aod/AODManager;

.field public mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

.field public mConvertColor:I

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

.field public mInfiniteLighting:Z

.field public mIsActionEnable:Z

.field public mIsActivity:Z

.field public mIsHideBriefPopupForEdgeLightingPlus:Z

.field public mIsShowMorphView:Z

.field public mIsSingleTapDisabledForEdgeLightingPlus:Z

.field public mIsSwipeDownDisabledForEdgeLightingPlus:Z

.field public mKgm:Landroid/app/KeyguardManager;

.field public mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

.field public mNotificationContainer:Landroid/widget/RelativeLayout;

.field public mNotificationKey:Ljava/lang/String;

.field public final mOnComputeInternalInsetsListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPm:Landroid/os/PowerManager;

.field public final mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

.field public final mTouchableRec:Landroid/graphics/Rect;

.field public mUsingBlackBG:Z


# direct methods
.method public static $r8$lambda$8SbRsnXG3nQq76BB883ytyHG1_Y(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo p1, "onComputeInternalInsets touchable region is null"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "aod_show_state"

    .line 37
    .line 38
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eq v1, v3, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v3, 0x0

    .line 72
    cmpl-float v1, v1, v3

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x3

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method public static -$$Nest$mfreeformLaunchBounds(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_TABLET_DEVICE:Z

    .line 16
    .line 17
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 22
    .line 23
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_FOLDABLE:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const v1, 0x3ee66666    # 0.45f

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const v0, 0x3f79999a    # 0.975f

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v1

    .line 44
    :goto_0
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 45
    .line 46
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 50
    .line 51
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 52
    .line 53
    const v3, 0x3f59999a    # 0.85f

    .line 54
    .line 55
    .line 56
    if-ge v0, v2, :cond_3

    .line 57
    .line 58
    iput v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 59
    .line 60
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 64
    .line 65
    iput v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 66
    .line 67
    :goto_1
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 68
    .line 69
    int-to-float v1, v0

    .line 70
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    .line 71
    .line 72
    mul-float/2addr v1, v2

    .line 73
    float-to-int v1, v1

    .line 74
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 75
    .line 76
    int-to-float v3, v2

    .line 77
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 78
    .line 79
    mul-float/2addr v3, p0

    .line 80
    float-to-int p0, v3

    .line 81
    sub-int/2addr v0, v1

    .line 82
    div-int/lit8 v0, v0, 0x2

    .line 83
    .line 84
    sub-int/2addr v2, p0

    .line 85
    div-int/lit8 v2, v2, 0x2

    .line 86
    .line 87
    new-instance v3, Landroid/graphics/Rect;

    .line 88
    .line 89
    add-int/2addr v1, v0

    .line 90
    add-int/2addr p0, v2

    .line 91
    invoke-direct {v3, v0, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .line 93
    .line 94
    return-object v3
.end method

.method public static -$$Nest$mlaunchPopupWindow(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 7
    .line 8
    const v0, 0x1d4c0

    .line 9
    .line 10
    .line 11
    if-lt p1, v0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "isActivity: false : pendingintent is null "

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "isActivity: false "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 p1, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 p1, 0x1

    .line 63
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v1, 0x10

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 81
    .line 82
    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onFlingDownInWindow(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 87
    .line 88
    .line 89
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->run()V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_2
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.csc.countryiso_code"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "US"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const-string p1, "NotificationEffect"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    const v1, -0xf0551d

    .line 5
    iput v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    .line 11
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    const v0, 0x3f2b851f    # 0.67f

    .line 12
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 14
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-class p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    const-string p1, "NotificationEffect"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    const v0, -0xf0551d

    .line 22
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 23
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 25
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 26
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    .line 27
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    .line 28
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    const p1, 0x3f2b851f    # 0.67f

    .line 29
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_WIDTH_RATIO:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 30
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->FREEFORM_HEIGHT_RATIO:F

    .line 31
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 33
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    return-void
.end method

.method public static isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "double_tab_to_wake_up"

    .line 30
    .line 31
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ne p0, v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v2

    .line 39
    :goto_1
    return v1
.end method


# virtual methods
.method public final addTouchInsector()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public dismiss()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, " remove edge  tsp  rect "

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    const/4 v4, -0x1

    .line 23
    const/4 v5, -0x1

    .line 24
    const/4 v6, -0x1

    .line 25
    const-string v7, "brief_popup"

    .line 26
    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->unregisterAODReceiver()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public dismissToastPopup()V
    .locals 0

    .line 1
    return-void
.end method

.method public finishToastPopupAnimation()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDensityScaledRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    new-instance v2, Landroid/graphics/Point;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 56
    .line 57
    .line 58
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    cmpl-float v3, v2, v0

    .line 62
    .line 63
    if-ltz v3, :cond_0

    .line 64
    .line 65
    div-float v3, v2, v0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move v3, v1

    .line 69
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v5, "pWidth - "

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, " width : "

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move v3, v1

    .line 99
    :goto_1
    cmpl-float p0, v3, v1

    .line 100
    .line 101
    if-eqz p0, :cond_2

    .line 102
    .line 103
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    int-to-float p0, p0

    .line 106
    mul-float/2addr p0, v3

    .line 107
    float-to-int p0, p0

    .line 108
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 111
    .line 112
    int-to-float p0, p0

    .line 113
    mul-float/2addr p0, v3

    .line 114
    float-to-int p0, p0

    .line 115
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 116
    .line 117
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 118
    .line 119
    int-to-float p0, p0

    .line 120
    mul-float/2addr p0, v3

    .line 121
    float-to-int p0, p0

    .line 122
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 123
    .line 124
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 125
    .line 126
    int-to-float p0, p0

    .line 127
    mul-float/2addr p0, v3

    .line 128
    float-to-int p0, p0

    .line 129
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    :cond_2
    return-void
.end method

.method public final getToastRectCalculated()Landroid/graphics/Rect;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 36
    .line 37
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    sub-int v2, p0, v2

    .line 40
    .line 41
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    sub-int/2addr p0, v1

    .line 50
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 62
    .line 63
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const/4 v2, 0x3

    .line 75
    const/4 v3, 0x1

    .line 76
    if-eq v1, v3, :cond_3

    .line 77
    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v4, 0x0

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    :goto_1
    move v4, v3

    .line 84
    :goto_2
    if-nez v4, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 93
    .line 94
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 99
    .line 100
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 103
    .line 104
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getDensityScaledRect(Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 111
    .line 112
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string/jumbo v6, "window"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Landroid/view/WindowManager;

    .line 127
    .line 128
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    .line 134
    .line 135
    if-ne v1, v3, :cond_5

    .line 136
    .line 137
    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 142
    .line 143
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    sub-int v3, v1, v3

    .line 146
    .line 147
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 148
    .line 149
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 152
    .line 153
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 154
    .line 155
    sub-int/2addr v1, v3

    .line 156
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 157
    .line 158
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 159
    .line 160
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    if-ne v1, v2, :cond_6

    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 166
    .line 167
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 168
    .line 169
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 170
    .line 171
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 172
    .line 173
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 174
    .line 175
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 176
    .line 177
    sub-int v3, v2, v3

    .line 178
    .line 179
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 182
    .line 183
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 184
    .line 185
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    sub-int/2addr v2, v1

    .line 188
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 189
    .line 190
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getDensityScaledRect(Landroid/graphics/Rect;)V

    .line 191
    .line 192
    .line 193
    return-object v0
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "layout_inflater"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/LayoutInflater;

    .line 15
    .line 16
    const v1, 0x7f0d00e3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "power"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/os/PowerManager;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "keyguard"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/app/KeyguardManager;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 50
    .line 51
    const v0, 0x7f0a075a

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 61
    .line 62
    const v0, 0x7f0a0765

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    new-instance v0, Landroid/view/GestureDetector;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$GestureListener;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 91
    .line 92
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 93
    .line 94
    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mScreenWidth:I

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    .line 97
    .line 98
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    .line 99
    .line 100
    const-string v0, "dreams"

    .line 101
    .line 102
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const v0, 0x7f0714cc

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final isTouchable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final launchPendingIntent()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-string v4, "[Brief] Wakeup and launchPendingIntent"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    .line 55
    if-eqz v0, :cond_e

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_7

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 84
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    const-string v5, "[Brief] Wakeup and send intent after unlock"

    .line 90
    .line 91
    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    sget-boolean v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isDoubleTapToWakeUpEnabled(Landroid/content/Context;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 120
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    const-string v0, "[Brief] Wakeup only"

    .line 126
    .line 127
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    return-void

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 132
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    const-string v5, "[Brief] Wakeup and send intent"

    .line 138
    .line 139
    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 143
    .line 144
    if-eqz v0, :cond_d

    .line 145
    .line 146
    new-instance v0, Landroid/content/Intent;

    .line 147
    .line 148
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/4 v3, 0x1

    .line 158
    if-nez v1, :cond_9

    .line 159
    .line 160
    sget-boolean v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    .line 161
    .line 162
    const-string v4, "dismissIfInsecure"

    .line 163
    .line 164
    if-eqz v1, :cond_8

    .line 165
    .line 166
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_8
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v1, :cond_a

    .line 176
    .line 177
    const-string/jumbo v4, "notificationKey"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    :cond_a
    const-string v1, "ignoreKeyguardState"

    .line 184
    .line 185
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_b

    .line 195
    .line 196
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 197
    .line 198
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_b

    .line 203
    .line 204
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 205
    .line 206
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    move v2, v3

    .line 210
    goto :goto_2

    .line 211
    :catch_0
    move-exception v1

    .line 212
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    .line 216
    .line 217
    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;Landroid/content/Intent;)V

    .line 220
    .line 221
    .line 222
    const-wide/16 v2, 0x32

    .line 223
    .line 224
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mKgm:Landroid/app/KeyguardManager;

    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 231
    .line 232
    invoke-virtual {v1, v2, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 233
    .line 234
    .line 235
    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 236
    .line 237
    if-eqz p0, :cond_e

    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 242
    .line 243
    if-eqz p0, :cond_e

    .line 244
    .line 245
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    .line 246
    .line 247
    .line 248
    :cond_e
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, " onAttached Window add Touch Insector : mIsShowMorphView="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", screen_on="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", aod_state="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "aod_show_state"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, " onDetachedFromWindow Window remove Touch Insector : "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", screen_on="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", aod_state="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "aod_show_state"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mOnComputeInternalInsetsListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public onFlickUpAnimation()V
    .locals 12

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [F

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    div-int/lit8 v4, v4, 0x2

    .line 16
    .line 17
    neg-int v4, v4

    .line 18
    int-to-float v4, v4

    .line 19
    const/4 v5, 0x0

    .line 20
    aput v4, v3, v5

    .line 21
    .line 22
    const-string/jumbo v4, "translationY"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 30
    .line 31
    new-array v6, v2, [F

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    div-int/lit8 v7, v7, 0x2

    .line 38
    .line 39
    int-to-float v7, v7

    .line 40
    aput v7, v6, v5

    .line 41
    .line 42
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 47
    .line 48
    new-array v6, v2, [F

    .line 49
    .line 50
    const/high16 v7, 0x3f800000    # 1.0f

    .line 51
    .line 52
    aput v7, v6, v5

    .line 53
    .line 54
    const-string v8, "alpha"

    .line 55
    .line 56
    invoke-static {v4, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 61
    .line 62
    new-array v2, v2, [F

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    aput v9, v2, v5

    .line 66
    .line 67
    invoke-static {v6, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const v5, 0x3ea8f5c3    # 0.33f

    .line 72
    .line 73
    .line 74
    const v6, 0x3ecccccd    # 0.4f

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v9, v6, v7, v1}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v10, 0xc8

    .line 81
    .line 82
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v9, v6, v7, v1}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    .line 91
    const-wide/16 v10, 0x64

    .line 92
    .line 93
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    invoke-static {v5, v9, v6, v7, v3}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 97
    .line 98
    .line 99
    const-wide/16 v10, 0x12c

    .line 100
    .line 101
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v9, v6, v7, v2}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    .line 109
    .line 110
    filled-new-array {v3, v4, v1}, [Landroid/animation/Animator;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 115
    .line 116
    .line 117
    filled-new-array {v1, v2}, [Landroid/animation/Animator;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$6;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$6;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->updateEffectLocation()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, " onSizeChanged w : "

    .line 24
    .line 25
    const-string v2, " h : "

    .line 26
    .line 27
    const-string v3, " oldW : "

    .line 28
    .line 29
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, " oldH : "

    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->disappear()V

    .line 54
    .line 55
    .line 56
    new-instance p3, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    invoke-direct {p3, p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;II)V

    .line 59
    .line 60
    .line 61
    const-wide/16 p1, 0xc8

    .line 62
    .line 63
    invoke-virtual {p0, p3, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string/jumbo v2, "sec_e-pen"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "aod_show_state"

    .line 50
    .line 51
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne v0, v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->launchPendingIntent()V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mGestureDetector:Landroid/view/GestureDetector;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0
.end method

.method public requestHideEffectView()V
    .locals 0

    .line 1
    return-void
.end method

.method public setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    const-string/jumbo v0, "setEdgeEffectInfo:  dur="

    .line 8
    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-wide v4, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 14
    .line 15
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mInfiniteLighting:Z

    .line 19
    .line 20
    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mInfiniteLighting:Z

    .line 21
    .line 22
    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    iget-boolean v5, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSupportAppIcon:Z

    .line 27
    .line 28
    iget-boolean v6, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mShouldShowAppIcon:Z

    .line 29
    .line 30
    iget-object v7, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    if-eqz v0, :cond_c

    .line 35
    .line 36
    aget-object v11, v0, v10

    .line 37
    .line 38
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-nez v11, :cond_c

    .line 43
    .line 44
    iget-object v11, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 45
    .line 46
    iget-object v12, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 47
    .line 48
    invoke-virtual {v12}, Landroid/os/PowerManager;->isInteractive()Z

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    aget-object v13, v0, v10

    .line 56
    .line 57
    if-eqz v13, :cond_0

    .line 58
    .line 59
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-nez v13, :cond_0

    .line 64
    .line 65
    iget-object v13, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 66
    .line 67
    aget-object v14, v0, v10

    .line 68
    .line 69
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    aget-object v13, v0, v9

    .line 73
    .line 74
    const-string v15, " code length : "

    .line 75
    .line 76
    const-string v8, " , end "

    .line 77
    .line 78
    const-string v10, "Verification code start : "

    .line 79
    .line 80
    const-string v14, "MorphView"

    .line 81
    .line 82
    const-string v9, "..."

    .line 83
    .line 84
    if-eqz v13, :cond_5

    .line 85
    .line 86
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-nez v13, :cond_5

    .line 91
    .line 92
    if-eqz v12, :cond_3

    .line 93
    .line 94
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    move-object/from16 v17, v3

    .line 99
    .line 100
    const/4 v13, 0x1

    .line 101
    aget-object v3, v0, v13

    .line 102
    .line 103
    invoke-static {v12, v3}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget v10, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 115
    .line 116
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    sget v8, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    .line 123
    .line 124
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    sget v3, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    .line 149
    .line 150
    sget-object v8, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 151
    .line 152
    if-nez v8, :cond_1

    .line 153
    .line 154
    const/4 v8, 0x0

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    :goto_0
    sub-int/2addr v3, v8

    .line 161
    const/16 v8, 0xf

    .line 162
    .line 163
    if-le v3, v8, :cond_2

    .line 164
    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 v9, 0x1

    .line 171
    aget-object v10, v0, v9

    .line 172
    .line 173
    add-int/lit8 v12, v3, -0xf

    .line 174
    .line 175
    invoke-virtual {v10, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    aput-object v3, v0, v9

    .line 187
    .line 188
    const/4 v13, 0x0

    .line 189
    goto :goto_1

    .line 190
    :cond_2
    const/4 v9, 0x1

    .line 191
    aget-object v8, v0, v9

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    invoke-virtual {v8, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    aput-object v3, v0, v9

    .line 199
    .line 200
    :goto_1
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    new-instance v3, Landroid/text/SpannableString;

    .line 206
    .line 207
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-direct {v3, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    new-instance v8, Landroid/text/style/UnderlineSpan;

    .line 215
    .line 216
    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    invoke-virtual {v3, v8, v13, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    .line 225
    .line 226
    iget-object v8, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 227
    .line 228
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    const/16 v16, 0x1

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_3
    move-object/from16 v17, v3

    .line 235
    .line 236
    :cond_4
    const/4 v13, 0x0

    .line 237
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 238
    .line 239
    const/16 v8, 0x8

    .line 240
    .line 241
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    move/from16 v16, v13

    .line 245
    .line 246
    :goto_2
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 247
    .line 248
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 252
    .line 253
    const/4 v8, 0x1

    .line 254
    aget-object v9, v0, v8

    .line 255
    .line 256
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    move v8, v13

    .line 260
    move/from16 v3, v16

    .line 261
    .line 262
    goto/16 :goto_5

    .line 263
    .line 264
    :cond_5
    move-object/from16 v17, v3

    .line 265
    .line 266
    const/4 v13, 0x0

    .line 267
    if-eqz v12, :cond_8

    .line 268
    .line 269
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    aget-object v12, v0, v13

    .line 274
    .line 275
    invoke-static {v3, v12}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-eqz v3, :cond_7

    .line 280
    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    sget v10, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 287
    .line 288
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    sget v8, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_endIndex:I

    .line 295
    .line 296
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    sget v3, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 321
    .line 322
    const/16 v8, 0xf

    .line 323
    .line 324
    if-le v3, v8, :cond_6

    .line 325
    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const/4 v8, 0x0

    .line 332
    aget-object v10, v0, v8

    .line 333
    .line 334
    sget v12, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 335
    .line 336
    add-int/lit8 v13, v12, -0xf

    .line 337
    .line 338
    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    aput-object v3, v0, v8

    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_6
    const/4 v8, 0x0

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    aget-object v10, v0, v8

    .line 362
    .line 363
    sget v12, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->code_startIndex:I

    .line 364
    .line 365
    invoke-virtual {v10, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v10

    .line 369
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    aput-object v3, v0, v8

    .line 380
    .line 381
    :goto_3
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 382
    .line 383
    aget-object v9, v0, v8

    .line 384
    .line 385
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 389
    .line 390
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    new-instance v3, Landroid/text/SpannableString;

    .line 394
    .line 395
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    invoke-direct {v3, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    new-instance v9, Landroid/text/style/UnderlineSpan;

    .line 403
    .line 404
    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    invoke-virtual {v3, v9, v8, v10, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 412
    .line 413
    .line 414
    iget-object v9, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 415
    .line 416
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    goto :goto_5

    .line 421
    :cond_7
    const/4 v8, 0x0

    .line 422
    goto :goto_4

    .line 423
    :cond_8
    move v8, v13

    .line 424
    :goto_4
    iget-object v3, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 425
    .line 426
    const/16 v9, 0x8

    .line 427
    .line 428
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    move v3, v8

    .line 432
    :goto_5
    aget-object v9, v0, v8

    .line 433
    .line 434
    if-eqz v9, :cond_a

    .line 435
    .line 436
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-nez v8, :cond_a

    .line 441
    .line 442
    const/4 v8, 0x1

    .line 443
    aget-object v0, v0, v8

    .line 444
    .line 445
    if-eqz v0, :cond_9

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_a

    .line 452
    .line 453
    :cond_9
    iget-object v0, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 454
    .line 455
    const/16 v8, 0x8

    .line 456
    .line 457
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v11, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 461
    .line 462
    const v8, 0x7fffffff

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 466
    .line 467
    .line 468
    :cond_a
    if-eqz v3, :cond_b

    .line 469
    .line 470
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 471
    .line 472
    if-eqz v0, :cond_b

    .line 473
    .line 474
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 477
    .line 478
    if-eqz v0, :cond_b

    .line 479
    .line 480
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onExtendLightingDuration()V

    .line 481
    .line 482
    .line 483
    :cond_b
    const/4 v0, 0x1

    .line 484
    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 485
    .line 486
    goto :goto_6

    .line 487
    :cond_c
    move-object/from16 v17, v3

    .line 488
    .line 489
    move v0, v9

    .line 490
    move v3, v10

    .line 491
    iput-boolean v3, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 492
    .line 493
    :goto_6
    if-eqz v4, :cond_f

    .line 494
    .line 495
    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 496
    .line 497
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 498
    .line 499
    iput-boolean v5, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSupportAppIcon:Z

    .line 500
    .line 501
    iput-boolean v6, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsShowAppIcon:Z

    .line 502
    .line 503
    if-eqz v6, :cond_d

    .line 504
    .line 505
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    .line 506
    .line 507
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    const v8, 0x7f081106

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 519
    .line 520
    .line 521
    goto :goto_7

    .line 522
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    .line 523
    .line 524
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    const v8, 0x7f080cbf

    .line 529
    .line 530
    .line 531
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 536
    .line 537
    .line 538
    :goto_7
    if-eqz v5, :cond_e

    .line 539
    .line 540
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    .line 541
    .line 542
    const/4 v5, 0x0

    .line 543
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    .line 547
    .line 548
    const/16 v6, 0x8

    .line 549
    .line 550
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    .line 552
    .line 553
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    .line 554
    .line 555
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_e
    const/4 v5, 0x0

    .line 560
    const/16 v6, 0x8

    .line 561
    .line 562
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    .line 563
    .line 564
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    .line 568
    .line 569
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    .line 573
    .line 574
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    .line 576
    .line 577
    :cond_f
    :goto_8
    if-eqz v7, :cond_10

    .line 578
    .line 579
    iput-object v7, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 580
    .line 581
    :cond_10
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 582
    .line 583
    if-eqz v0, :cond_13

    .line 584
    .line 585
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 586
    .line 587
    if-nez v0, :cond_13

    .line 588
    .line 589
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 590
    .line 591
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_12

    .line 596
    .line 597
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    .line 598
    .line 599
    if-eqz v0, :cond_12

    .line 600
    .line 601
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 602
    .line 603
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-nez v0, :cond_12

    .line 608
    .line 609
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-eqz v0, :cond_11

    .line 614
    .line 615
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 616
    .line 617
    const/4 v3, 0x0

    .line 618
    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->showExpandButton(Z)V

    .line 619
    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_11
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 623
    .line 624
    const/4 v3, 0x1

    .line 625
    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->showExpandButton(Z)V

    .line 626
    .line 627
    .line 628
    goto :goto_9

    .line 629
    :cond_12
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 630
    .line 631
    const/4 v3, 0x0

    .line 632
    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->showExpandButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .line 634
    .line 635
    goto :goto_9

    .line 636
    :catch_0
    move-exception v0

    .line 637
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 638
    .line 639
    .line 640
    :goto_9
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 641
    .line 642
    iget-boolean v3, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    .line 643
    .line 644
    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsGrayScaled:Z

    .line 645
    .line 646
    const-string v0, " hasActionButton="

    .line 647
    .line 648
    move-object/from16 v3, v17

    .line 649
    .line 650
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    .line 652
    .line 653
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    .line 654
    .line 655
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 656
    .line 657
    .line 658
    const-string v0, " isGrayScaled= "

    .line 659
    .line 660
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    .line 662
    .line 663
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    .line 664
    .line 665
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 666
    .line 667
    .line 668
    goto :goto_a

    .line 669
    :cond_13
    move-object/from16 v3, v17

    .line 670
    .line 671
    :goto_a
    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 672
    .line 673
    invoke-virtual {v1, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 674
    .line 675
    .line 676
    const-string v0, " color="

    .line 677
    .line 678
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    .line 680
    .line 681
    iget v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 682
    .line 683
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    .line 689
    .line 690
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 691
    .line 692
    const/4 v4, 0x0

    .line 693
    iput-boolean v4, v0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    .line 694
    .line 695
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    .line 696
    .line 697
    iget-boolean v5, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    .line 698
    .line 699
    if-eq v0, v5, :cond_14

    .line 700
    .line 701
    iput-boolean v5, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    .line 702
    .line 703
    :cond_14
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mUsingBlackBG:Z

    .line 704
    .line 705
    if-eqz v0, :cond_15

    .line 706
    .line 707
    iput-boolean v4, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 708
    .line 709
    :cond_15
    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    .line 710
    .line 711
    if-eqz v0, :cond_16

    .line 712
    .line 713
    iput-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    .line 714
    .line 715
    :cond_16
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    .line 716
    .line 717
    iput-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 718
    .line 719
    const-string v0, " notificationKey="

    .line 720
    .line 721
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    .line 723
    .line 724
    iget-object v0, v2, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    .line 728
    .line 729
    const-string v0, " actionEnable= "

    .line 730
    .line 731
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    .line 733
    .line 734
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 735
    .line 736
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 737
    .line 738
    .line 739
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .line 747
    .line 748
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 749
    .line 750
    new-instance v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;

    .line 751
    .line 752
    invoke-direct {v2, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V

    .line 753
    .line 754
    .line 755
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 756
    .line 757
    if-eqz v0, :cond_17

    .line 758
    .line 759
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    .line 761
    .line 762
    :cond_17
    return-void
.end method

.method public setEffectColors([I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v3, v1

    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    const/high16 v3, -0x1000000

    .line 12
    .line 13
    aget v1, v1, v2

    .line 14
    .line 15
    or-int/2addr v1, v3

    .line 16
    iput v1, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    new-array v3, v1, [F

    .line 20
    .line 21
    iget v4, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 22
    .line 23
    invoke-static {v4, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aget v5, v3, v4

    .line 28
    .line 29
    const v6, 0x3dcccccd    # 0.1f

    .line 30
    .line 31
    .line 32
    cmpg-float v7, v5, v6

    .line 33
    .line 34
    const-string v8, " B : "

    .line 35
    .line 36
    const-string v9, " S : "

    .line 37
    .line 38
    const/4 v10, 0x2

    .line 39
    if-gtz v7, :cond_1

    .line 40
    .line 41
    aget v7, v3, v10

    .line 42
    .line 43
    const v11, 0x3f666666    # 0.9f

    .line 44
    .line 45
    .line 46
    cmpl-float v7, v7, v11

    .line 47
    .line 48
    if-ltz v7, :cond_1

    .line 49
    .line 50
    const v5, -0x190503

    .line 51
    .line 52
    .line 53
    iput v5, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 54
    .line 55
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v7, " White color : H : "

    .line 60
    .line 61
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    aget v7, v3, v2

    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    aget v7, v3, v4

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    aget v3, v3, v10

    .line 81
    .line 82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 v7, 0x0

    .line 94
    cmpg-float v7, v7, v5

    .line 95
    .line 96
    if-gtz v7, :cond_2

    .line 97
    .line 98
    const/high16 v7, 0x3f800000    # 1.0f

    .line 99
    .line 100
    cmpg-float v5, v5, v7

    .line 101
    .line 102
    if-gtz v5, :cond_2

    .line 103
    .line 104
    aget v5, v3, v10

    .line 105
    .line 106
    cmpg-float v5, v5, v6

    .line 107
    .line 108
    if-gtz v5, :cond_2

    .line 109
    .line 110
    const v5, -0xc1bcb5

    .line 111
    .line 112
    .line 113
    iput v5, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 114
    .line 115
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v7, " Black color : H : "

    .line 120
    .line 121
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    aget v7, v3, v2

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    aget v7, v3, v4

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    aget v3, v3, v10

    .line 141
    .line 142
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 153
    .line 154
    iget v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    .line 155
    .line 156
    iget-object v5, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    iget-object v5, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 165
    .line 166
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    .line 171
    .line 172
    if-eqz v6, :cond_3

    .line 173
    .line 174
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 175
    .line 176
    iget-boolean v6, v3, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    .line 177
    .line 178
    if-eqz v6, :cond_3

    .line 179
    .line 180
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 184
    .line 185
    .line 186
    :cond_3
    new-array v1, v1, [F

    .line 187
    .line 188
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const v6, 0x7f060934

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    aget v4, v1, v4

    .line 203
    .line 204
    float-to-double v6, v4

    .line 205
    const-wide v8, 0x3fc999999999999aL    # 0.2

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    cmpg-double v4, v6, v8

    .line 211
    .line 212
    const-wide v11, 0x3fee666666666666L    # 0.95

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    if-gtz v4, :cond_4

    .line 218
    .line 219
    aget v13, v1, v10

    .line 220
    .line 221
    float-to-double v13, v13

    .line 222
    cmpl-double v13, v13, v11

    .line 223
    .line 224
    if-ltz v13, :cond_4

    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const v4, 0x7f060203

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_4
    aget v10, v1, v10

    .line 240
    .line 241
    float-to-double v13, v10

    .line 242
    const-wide v15, 0x3fa999999999999aL    # 0.05

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    cmpg-double v10, v13, v15

    .line 248
    .line 249
    if-gtz v10, :cond_5

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const v4, 0x7f060201

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :cond_5
    aget v1, v1, v2

    .line 265
    .line 266
    const/high16 v10, 0x41f00000    # 30.0f

    .line 267
    .line 268
    cmpg-float v17, v1, v10

    .line 269
    .line 270
    const v2, 0x7f060200

    .line 271
    .line 272
    .line 273
    const-wide v18, 0x3fe6666666666666L    # 0.7

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    const v15, 0x7f060202

    .line 279
    .line 280
    .line 281
    const-wide v20, 0x3fdccccccccccccdL    # 0.45

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    const-wide v22, 0x3feb333333333333L    # 0.85

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    if-lez v17, :cond_12

    .line 292
    .line 293
    const/high16 v16, 0x433e0000    # 190.0f

    .line 294
    .line 295
    cmpl-float v17, v1, v16

    .line 296
    .line 297
    if-ltz v17, :cond_6

    .line 298
    .line 299
    const/high16 v17, 0x43b40000    # 360.0f

    .line 300
    .line 301
    cmpg-float v17, v1, v17

    .line 302
    .line 303
    if-gtz v17, :cond_6

    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :cond_6
    const/high16 v17, 0x42480000    # 50.0f

    .line 308
    .line 309
    cmpl-float v24, v1, v17

    .line 310
    .line 311
    const/high16 v25, 0x43110000    # 145.0f

    .line 312
    .line 313
    if-ltz v24, :cond_b

    .line 314
    .line 315
    cmpg-float v24, v1, v25

    .line 316
    .line 317
    if-gtz v24, :cond_b

    .line 318
    .line 319
    cmpl-double v1, v6, v8

    .line 320
    .line 321
    if-ltz v1, :cond_7

    .line 322
    .line 323
    cmpl-double v1, v13, v11

    .line 324
    .line 325
    if-gez v1, :cond_9

    .line 326
    .line 327
    :cond_7
    cmpl-double v1, v13, v22

    .line 328
    .line 329
    if-ltz v1, :cond_8

    .line 330
    .line 331
    cmpg-double v1, v13, v11

    .line 332
    .line 333
    if-lez v1, :cond_9

    .line 334
    .line 335
    :cond_8
    if-gtz v4, :cond_a

    .line 336
    .line 337
    cmpl-double v1, v13, v18

    .line 338
    .line 339
    if-ltz v1, :cond_a

    .line 340
    .line 341
    cmpg-double v1, v13, v22

    .line 342
    .line 343
    if-gtz v1, :cond_a

    .line 344
    .line 345
    :cond_9
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :cond_a
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :cond_b
    cmpl-float v4, v1, v10

    .line 366
    .line 367
    if-ltz v4, :cond_c

    .line 368
    .line 369
    cmpg-float v4, v1, v17

    .line 370
    .line 371
    if-lez v4, :cond_d

    .line 372
    .line 373
    :cond_c
    cmpl-float v4, v1, v25

    .line 374
    .line 375
    if-ltz v4, :cond_17

    .line 376
    .line 377
    cmpg-float v1, v1, v16

    .line 378
    .line 379
    if-gtz v1, :cond_17

    .line 380
    .line 381
    :cond_d
    cmpl-double v1, v6, v8

    .line 382
    .line 383
    if-ltz v1, :cond_e

    .line 384
    .line 385
    cmpl-double v1, v13, v11

    .line 386
    .line 387
    if-gez v1, :cond_10

    .line 388
    .line 389
    :cond_e
    cmpg-double v1, v6, v20

    .line 390
    .line 391
    if-gtz v1, :cond_f

    .line 392
    .line 393
    cmpl-double v1, v13, v22

    .line 394
    .line 395
    if-ltz v1, :cond_f

    .line 396
    .line 397
    cmpg-double v1, v13, v11

    .line 398
    .line 399
    if-lez v1, :cond_10

    .line 400
    .line 401
    :cond_f
    const-wide v4, 0x3fc3333333333333L    # 0.15

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    cmpg-double v1, v6, v4

    .line 407
    .line 408
    if-gtz v1, :cond_11

    .line 409
    .line 410
    cmpl-double v1, v13, v18

    .line 411
    .line 412
    if-ltz v1, :cond_11

    .line 413
    .line 414
    cmpg-double v1, v13, v22

    .line 415
    .line 416
    if-gtz v1, :cond_11

    .line 417
    .line 418
    :cond_10
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    goto :goto_2

    .line 427
    :cond_11
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    goto :goto_2

    .line 436
    :cond_12
    :goto_1
    cmpl-double v1, v6, v8

    .line 437
    .line 438
    if-ltz v1, :cond_13

    .line 439
    .line 440
    cmpg-double v1, v6, v20

    .line 441
    .line 442
    if-gtz v1, :cond_13

    .line 443
    .line 444
    cmpl-double v1, v13, v11

    .line 445
    .line 446
    if-gez v1, :cond_15

    .line 447
    .line 448
    :cond_13
    cmpg-double v1, v6, v20

    .line 449
    .line 450
    if-gtz v1, :cond_14

    .line 451
    .line 452
    cmpl-double v1, v13, v22

    .line 453
    .line 454
    if-ltz v1, :cond_14

    .line 455
    .line 456
    cmpg-double v1, v13, v11

    .line 457
    .line 458
    if-lez v1, :cond_15

    .line 459
    .line 460
    :cond_14
    const-wide v4, 0x3fa999999999999aL    # 0.05

    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    cmpg-double v1, v6, v4

    .line 466
    .line 467
    if-gtz v1, :cond_16

    .line 468
    .line 469
    cmpl-double v1, v13, v18

    .line 470
    .line 471
    if-ltz v1, :cond_16

    .line 472
    .line 473
    cmpg-double v1, v13, v22

    .line 474
    .line 475
    if-gtz v1, :cond_16

    .line 476
    .line 477
    :cond_15
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    goto :goto_2

    .line 486
    :cond_16
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    :cond_17
    :goto_2
    iget-boolean v1, v3, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    .line 495
    .line 496
    if-eqz v1, :cond_18

    .line 497
    .line 498
    iget-object v1, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 499
    .line 500
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    .line 502
    .line 503
    iget-object v1, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    .line 507
    .line 508
    :cond_18
    iget-object v1, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mSmallIcon:Landroid/widget/ImageView;

    .line 509
    .line 510
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    iget-object v2, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    .line 515
    .line 516
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    iget-boolean v4, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsGrayScaled:Z

    .line 521
    .line 522
    if-eqz v4, :cond_1b

    .line 523
    .line 524
    iget-boolean v4, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSupportAppIcon:Z

    .line 525
    .line 526
    if-eqz v4, :cond_19

    .line 527
    .line 528
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 529
    .line 530
    const/4 v4, 0x0

    .line 531
    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 532
    .line 533
    .line 534
    goto :goto_3

    .line 535
    :cond_19
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 536
    .line 537
    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 538
    .line 539
    .line 540
    :goto_3
    if-eqz v1, :cond_1c

    .line 541
    .line 542
    iget-boolean v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsSupportAppIcon:Z

    .line 543
    .line 544
    if-nez v0, :cond_1c

    .line 545
    .line 546
    if-nez v5, :cond_1a

    .line 547
    .line 548
    const v5, -0xb38f5d

    .line 549
    .line 550
    .line 551
    :cond_1a
    iget-object v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 552
    .line 553
    if-eqz v0, :cond_1c

    .line 554
    .line 555
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-nez v0, :cond_1c

    .line 564
    .line 565
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 566
    .line 567
    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 568
    .line 569
    .line 570
    goto :goto_4

    .line 571
    :cond_1b
    iget-object v0, v3, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mNotiIconBg:Landroid/widget/LinearLayout;

    .line 572
    .line 573
    const/4 v1, 0x0

    .line 574
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 575
    .line 576
    .line 577
    :cond_1c
    :goto_4
    return-void
.end method

.method public setIsMultiResolutionSupoorted(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public show()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->initialize()V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActionEnable:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->getToastRectCalculated()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    const-string v8, "brief_popup"

    .line 49
    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v4, "updateAODTspRect - "

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, " : "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 106
    .line 107
    if-nez v1, :cond_0

    .line 108
    .line 109
    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 110
    .line 111
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;I)V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 115
    .line 116
    const-string v0, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 117
    .line 118
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 127
    .line 128
    const-string v3, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    .line 146
    .line 147
    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    .line 149
    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    .line 153
    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 157
    .line 158
    const/4 v0, 0x1

    .line 159
    const-wide/16 v1, 0x190

    .line 160
    .line 161
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    .line 163
    .line 164
    :cond_2
    return-void
.end method

.method public startToastPopupAnimation()V
    .locals 0

    .line 1
    return-void
.end method

.method public final unregisterAODReceiver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "unregisterAODReceiver: unable to unregister Receiver="

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODTspUpdateReceiver:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$AODBroadcastReceiver;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateEffectLocation()V
    .locals 0

    .line 1
    return-void
.end method

.method public updateText(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method
