.class public final Lcom/android/keyguard/KeyguardSwipeViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

.field public final mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSwipeView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 9

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v8, p7

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object/from16 v5, p8

    .line 10
    .line 11
    move-object/from16 v6, p9

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/keyguard/KeyguardSwipeViewController$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSwipeViewController$1;-><init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, v7, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

    .line 22
    .line 23
    move-object v0, p6

    .line 24
    iput-object v0, v7, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 25
    .line 26
    iput-object v8, v7, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    .line 27
    .line 28
    iput-object v7, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    .line 29
    .line 30
    iget-object v0, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 31
    .line 32
    check-cast v0, Lcom/android/keyguard/KeyguardSwipeView;

    .line 33
    .line 34
    const v1, 0x7f0a0529

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    .line 42
    .line 43
    const v1, 0x7f130989

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    const v1, 0x7f1309f2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method


# virtual methods
.method public final callUserActivity()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final needsInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const-string p0, "KeyguardSwipeView"

    .line 2
    .line 3
    const-string/jumbo v0, "onPause()"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume(I)V
    .locals 2

    .line 1
    const-string/jumbo p0, "onResume(reason = + "

    .line 2
    .line 3
    .line 4
    const-string v0, " )"

    .line 5
    .line 6
    const-string v1, "KeyguardSwipeView"

    .line 7
    .line 8
    invoke-static {p0, p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUnlockExecuted()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    check-cast v0, Lcom/android/keyguard/KeyguardSwipeView;

    .line 16
    .line 17
    new-instance v1, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;-><init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeTouchListener:Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    .line 23
    .line 24
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    check-cast p0, Lcom/android/keyguard/KeyguardSwipeView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeTouchListener:Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    .line 19
    .line 20
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    .line 12
    .line 13
    const/high16 v1, -0x40800000    # -1.0f

    .line 14
    .line 15
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
