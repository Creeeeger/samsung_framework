.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mClearCoverHeaderLayout:Landroid/view/View;

.field public mPopUpViewLayout:Landroid/view/View;

.field public final mSettingsListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;

.field public mTopPopupHeight:I

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 11
    .line 12
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initKeyguardStateConroller$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initKeyguardStateConroller$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    .line 27
    .line 28
    .line 29
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mSettingsListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final getDetailAdapterContentViewResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0071

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getDetailAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p2, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const p0, 0x7f0d0073

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const p0, 0x7f0d0072

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getGroupAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p2, p0, :cond_2

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p2, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x4

    .line 10
    if-eq p2, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const p0, 0x7f0d045d

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const p0, 0x7f0d006f

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const p0, 0x7f0d006e

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const p0, 0x7f0d0076

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getListAdapterGroupItemResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d0079

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getListAdapterLayout(Landroidx/recyclerview/widget/RecyclerView;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p2, p0, :cond_4

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p2, p0, :cond_3

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p2, p0, :cond_2

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq p2, p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x5

    .line 16
    if-eq p2, p0, :cond_0

    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p0, 0x7f0d0078

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const p0, 0x7f0d007a

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const p0, 0x7f0d0070

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const p0, 0x7f0d0077

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const p0, 0x7f0d006e

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_5
    const p0, 0x7f0d007b

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 p3, 0x0

    .line 48
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    aput v3, v1, v2

    .line 9
    .line 10
    iget v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mTopPopupHeight:I

    .line 11
    .line 12
    mul-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    const/4 v3, 0x1

    .line 16
    aput v2, v1, v3

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-wide/16 v0, 0x190

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public final getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mTopPopupHeight:I

    .line 7
    .line 8
    mul-int/lit8 p0, p0, -0x1

    .line 9
    .line 10
    int-to-float p0, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    aput p0, v1, v2

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput v2, v1, p0

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-wide/16 v0, 0x190

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final getTopPopupLp()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    const/16 v3, 0x7e5

    .line 6
    .line 7
    const v4, 0x1020120

    .line 8
    .line 9
    .line 10
    const/4 v5, -0x3

    .line 11
    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    const-string v0, "SubscreenNotification"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x30

    .line 21
    .line 22
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public final initDisplay()V
    .locals 5

    .line 1
    const-string v0, "display"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    const-string v2, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v2, v0

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    xor-int/2addr v2, v3

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    aget-object v0, v0, v4

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string v0, "S.S.N."

    .line 42
    .line 43
    const-string v1, "Cover - fail to get subDisplay"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v1, 0x7f0701ba

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mTopPopupHeight:I

    .line 64
    .line 65
    return-void
.end method

.method public final initMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 2

    .line 1
    const v0, 0x7f0a0267

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mClearCoverHeaderLayout:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a0119

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f1310d3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final initialize()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initialize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lock_screen_show_notifications"

    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "turn_on_cover_screen_for_notification"

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "cover_screen_show_notification"

    .line 25
    .line 26
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    filled-new-array {v0, v1, v2}, [Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mSettingsListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;

    .line 37
    .line 38
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final makePopupDetailView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/widget/FrameLayout;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    const-string v4, "makePopupDetailView Cover- "

    .line 14
    .line 15
    const-string v5, "S.S.N."

    .line 16
    .line 17
    invoke-static {v4, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const v4, 0x7f0d0075

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f0d0074

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_1
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v3, 0x0

    .line 61
    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v2, 0x0

    .line 67
    :goto_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    const v4, 0x7f0a0b3f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/widget/TextView;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/4 v3, 0x0

    .line 82
    :goto_4
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    const v5, 0x7f0a0b35

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Landroid/widget/TextView;

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_5
    const/4 v4, 0x0

    .line 97
    :goto_5
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 98
    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    const v6, 0x7f0a0b38

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Landroid/widget/ImageView;

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_6
    const/4 v5, 0x0

    .line 112
    :goto_6
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 113
    .line 114
    if-eqz v6, :cond_7

    .line 115
    .line 116
    const v7, 0x7f0a0c60

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Landroid/widget/ImageView;

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_7
    const/4 v6, 0x0

    .line 127
    :goto_7
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 128
    .line 129
    if-eqz v7, :cond_8

    .line 130
    .line 131
    const v8, 0x7f0a09ba

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Landroid/widget/ImageView;

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_8
    const/4 v7, 0x0

    .line 142
    :goto_8
    const/4 v8, 0x0

    .line 143
    if-nez v3, :cond_9

    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_9
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :goto_9
    if-nez v4, :cond_a

    .line 150
    .line 151
    goto :goto_a

    .line 152
    :cond_a
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_a
    const/4 v9, 0x1

    .line 156
    if-eqz v2, :cond_b

    .line 157
    .line 158
    iget-boolean v10, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 159
    .line 160
    if-ne v10, v9, :cond_b

    .line 161
    .line 162
    move v8, v9

    .line 163
    :cond_b
    if-eqz v2, :cond_c

    .line 164
    .line 165
    iget-object v10, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    goto :goto_b

    .line 168
    :cond_c
    const/4 v10, 0x0

    .line 169
    :goto_b
    if-eqz v2, :cond_d

    .line 170
    .line 171
    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 172
    .line 173
    goto :goto_c

    .line 174
    :cond_d
    const/4 v11, 0x0

    .line 175
    :goto_c
    if-eqz v2, :cond_e

    .line 176
    .line 177
    iget-object v12, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    goto :goto_d

    .line 180
    :cond_e
    const/4 v12, 0x0

    .line 181
    :goto_d
    if-eqz v2, :cond_f

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    goto :goto_e

    .line 188
    :cond_f
    const/4 v13, 0x0

    .line 189
    :goto_e
    if-eqz v2, :cond_10

    .line 190
    .line 191
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 192
    .line 193
    goto :goto_f

    .line 194
    :cond_10
    const/4 v14, 0x0

    .line 195
    :goto_f
    if-eqz v1, :cond_11

    .line 196
    .line 197
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 198
    .line 199
    if-eqz v15, :cond_11

    .line 200
    .line 201
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    if-ne v15, v9, :cond_11

    .line 206
    .line 207
    goto :goto_10

    .line 208
    :cond_11
    const/4 v9, 0x0

    .line 209
    :goto_10
    const/16 v15, 0x8

    .line 210
    .line 211
    if-eqz v9, :cond_14

    .line 212
    .line 213
    if-eqz v2, :cond_12

    .line 214
    .line 215
    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 216
    .line 217
    goto :goto_11

    .line 218
    :cond_12
    const/4 v13, 0x0

    .line 219
    :goto_11
    if-nez v4, :cond_13

    .line 220
    .line 221
    goto :goto_12

    .line 222
    :cond_13
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    :cond_14
    :goto_12
    if-nez v3, :cond_15

    .line 226
    .line 227
    goto :goto_13

    .line 228
    :cond_15
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :goto_13
    if-nez v4, :cond_16

    .line 236
    .line 237
    goto :goto_14

    .line 238
    :cond_16
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    :goto_14
    if-eqz v13, :cond_19

    .line 246
    .line 247
    invoke-static {v13}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-nez v13, :cond_17

    .line 260
    .line 261
    const/4 v13, 0x1

    .line 262
    goto :goto_15

    .line 263
    :cond_17
    const/4 v13, 0x0

    .line 264
    :goto_15
    if-eqz v13, :cond_18

    .line 265
    .line 266
    goto :goto_16

    .line 267
    :cond_18
    const/4 v13, 0x0

    .line 268
    goto :goto_17

    .line 269
    :cond_19
    :goto_16
    const/4 v13, 0x1

    .line 270
    :goto_17
    if-eqz v14, :cond_1c

    .line 271
    .line 272
    invoke-static {v14}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v15

    .line 280
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v15

    .line 284
    if-nez v15, :cond_1a

    .line 285
    .line 286
    const/4 v15, 0x1

    .line 287
    goto :goto_18

    .line 288
    :cond_1a
    const/4 v15, 0x0

    .line 289
    :goto_18
    if-eqz v15, :cond_1b

    .line 290
    .line 291
    goto :goto_19

    .line 292
    :cond_1b
    const/4 v15, 0x0

    .line 293
    goto :goto_1a

    .line 294
    :cond_1c
    :goto_19
    const/4 v15, 0x1

    .line 295
    :goto_1a
    if-eqz v13, :cond_21

    .line 296
    .line 297
    if-nez v4, :cond_1d

    .line 298
    .line 299
    goto :goto_1b

    .line 300
    :cond_1d
    const/16 v13, 0x8

    .line 301
    .line 302
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    :goto_1b
    if-nez v3, :cond_1e

    .line 306
    .line 307
    goto :goto_1c

    .line 308
    :cond_1e
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    :goto_1c
    if-eqz v15, :cond_21

    .line 312
    .line 313
    if-nez v3, :cond_1f

    .line 314
    .line 315
    goto :goto_1e

    .line 316
    :cond_1f
    if-eqz v2, :cond_20

    .line 317
    .line 318
    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    .line 319
    .line 320
    goto :goto_1d

    .line 321
    :cond_20
    const/4 v13, 0x0

    .line 322
    :goto_1d
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    :cond_21
    :goto_1e
    if-eqz v15, :cond_23

    .line 326
    .line 327
    if-nez v4, :cond_22

    .line 328
    .line 329
    goto :goto_1f

    .line 330
    :cond_22
    const/16 v3, 0x8

    .line 331
    .line 332
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    :cond_23
    :goto_1f
    if-nez v9, :cond_25

    .line 336
    .line 337
    if-nez p3, :cond_25

    .line 338
    .line 339
    if-eqz v8, :cond_25

    .line 340
    .line 341
    if-eqz v11, :cond_25

    .line 342
    .line 343
    if-eqz v5, :cond_24

    .line 344
    .line 345
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 346
    .line 347
    .line 348
    :cond_24
    const/4 v1, 0x1

    .line 349
    goto :goto_22

    .line 350
    :cond_25
    if-eqz v12, :cond_27

    .line 351
    .line 352
    if-eqz v2, :cond_26

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_26

    .line 359
    .line 360
    const/4 v3, 0x1

    .line 361
    goto :goto_20

    .line 362
    :cond_26
    const/4 v3, 0x0

    .line 363
    :goto_20
    if-eqz v3, :cond_27

    .line 364
    .line 365
    if-eqz v5, :cond_29

    .line 366
    .line 367
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    .line 369
    .line 370
    goto :goto_21

    .line 371
    :cond_27
    if-eqz v5, :cond_28

    .line 372
    .line 373
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    :cond_28
    xor-int/lit8 v3, p3, 0x1

    .line 377
    .line 378
    const/4 v8, 0x0

    .line 379
    invoke-virtual {v0, v5, v8, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 383
    .line 384
    .line 385
    :cond_29
    :goto_21
    const/4 v1, 0x0

    .line 386
    :goto_22
    if-nez p3, :cond_2f

    .line 387
    .line 388
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    .line 389
    .line 390
    if-eqz v3, :cond_2a

    .line 391
    .line 392
    const v5, 0x7f0a0b3d

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Landroid/widget/ImageView;

    .line 400
    .line 401
    goto :goto_23

    .line 402
    :cond_2a
    const/4 v3, 0x0

    .line 403
    :goto_23
    if-eqz v1, :cond_2d

    .line 404
    .line 405
    if-eqz v3, :cond_2b

    .line 406
    .line 407
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    .line 409
    .line 410
    :cond_2b
    if-nez v3, :cond_2c

    .line 411
    .line 412
    goto :goto_24

    .line 413
    :cond_2c
    const/4 v1, 0x0

    .line 414
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    goto :goto_24

    .line 418
    :cond_2d
    if-nez v3, :cond_2e

    .line 419
    .line 420
    :goto_24
    const/16 v1, 0x8

    .line 421
    .line 422
    goto :goto_25

    .line 423
    :cond_2e
    const/16 v1, 0x8

    .line 424
    .line 425
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    :goto_25
    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 432
    .line 433
    .line 434
    goto :goto_26

    .line 435
    :cond_2f
    const/16 v1, 0x8

    .line 436
    .line 437
    :goto_26
    if-eqz p3, :cond_31

    .line 438
    .line 439
    if-nez v4, :cond_30

    .line 440
    .line 441
    goto :goto_27

    .line 442
    :cond_30
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    :cond_31
    :goto_27
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 446
    .line 447
    if-nez v0, :cond_32

    .line 448
    .line 449
    goto :goto_28

    .line 450
    :cond_32
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mMarqueeText:Landroid/widget/TextView;

    .line 451
    .line 452
    :goto_28
    return-void
.end method

.method public final onDisplayReady()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "display"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    const-string v2, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    xor-int/2addr v2, v3

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    aget-object v1, v1, v4

    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string/jumbo v1, "window"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/WindowManager;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    .line 53
    const-string v0, "S.S.N."

    .line 54
    .line 55
    const-string v1, " CC screen - onDisplayReady"

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 69
    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 94
    .line 95
    if-eq v1, v2, :cond_3

    .line 96
    .line 97
    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 100
    .line 101
    iput-object p0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 104
    .line 105
    iput-object p0, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const v1, 0x7f0d046d

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    .line 120
    .line 121
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    .line 126
    .line 127
    const v2, 0x7f0a0b29

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/widget/LinearLayout;

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderView(Landroid/widget/LinearLayout;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initRecyclerView()V

    .line 140
    .line 141
    .line 142
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 150
    .line 151
    .line 152
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    :goto_1
    return-void
.end method

.method public final removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7f060862

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    new-instance v0, Landroid/text/SpannableString;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/16 p1, 0x21

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final setListAdpaterFirstChildTopMargin(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mListAdapterItemPosition:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f0701b3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 27
    .line 28
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final setListAdpaterPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mListAdapterItemPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final smallIconPadding(ZZZ)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const p1, 0x7f0701a6

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p1, 0x7f0701ac

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final squircleRadius(ZZ)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMDisplayContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const p1, 0x7f0701b5

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p1, 0x7f0701b4

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final updateMainHeaderViewVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mClearCoverHeaderLayout:Landroid/view/View;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method
