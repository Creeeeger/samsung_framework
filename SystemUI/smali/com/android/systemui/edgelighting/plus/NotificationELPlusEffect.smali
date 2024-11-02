.class public final Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mEdgeEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

.field public final mEmitterItemInfo:Landroid/os/Bundle;

.field public mIsUsedAppIconForEdgeLightingPlus:Z

.field public final mPackageName:Ljava/lang/String;

.field public mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mIsUsedAppIconForEdgeLightingPlus:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEdgeEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 12
    .line 13
    iget-object p1, p3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dismissToastPopup()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->fadeOutAnimator()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final fadeOutAnimator()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    const-string v2, "alpha"

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x1f4

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;-><init>(Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 20
    .line 21
    new-instance v1, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->listener:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/high16 v1, -0x40800000    # -1.0f

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setZ(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 36
    .line 37
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->fadeOutAnimator()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    .line 5
    .line 6
    const-string v0, "color"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    filled-new-array {p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    .line 17
    .line 18
    const-string v2, "isUsedAutoColor"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v4, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mPackageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :cond_0
    const/high16 v3, -0x1000000

    .line 58
    .line 59
    or-int/2addr v1, v3

    .line 60
    aput v1, p1, v2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
