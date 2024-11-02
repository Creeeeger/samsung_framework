.class public final Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public final mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field public mKeyguardIconArray:Ljava/util/ArrayList;

.field public mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field public mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

.field public final mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public mScreenOn:Z

.field public final mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mSubUiIconArray:Ljava/util/ArrayList;

.field public mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

.field public final mTimeComparator:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 17
    .line 18
    const-class p3, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    .line 19
    .line 20
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    .line 25
    .line 26
    iget-object p3, p3, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mScreenOn:Z

    .line 32
    .line 33
    new-instance p3, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;

    .line 34
    .line 35
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    .line 36
    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mWakefulnessObserver:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;

    .line 39
    .line 40
    new-instance p4, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {p4}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTimeComparator:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 50
    .line 51
    new-instance p2, Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iput-object p5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 57
    .line 58
    iput-object p8, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 59
    .line 60
    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 69
    .line 70
    iput-object p6, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 71
    .line 72
    iget-object p1, p8, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 p1, 0x0

    .line 82
    :goto_0
    iput-object p1, p6, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Landroid/view/View;

    .line 83
    .line 84
    iput-object p0, p8, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 85
    .line 86
    const-class p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 87
    .line 88
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 93
    .line 94
    invoke-virtual {p0, p3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final getNotificationIconsOnlyContainerHeight()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0a0ba0

    .line 18
    .line 19
    .line 20
    const v2, 0x7f0a0bad

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setTagId(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 39
    .line 40
    iput-object v0, v1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Landroid/view/View;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 2
    .line 3
    const v1, 0x7f0a0ba1

    .line 4
    .line 5
    .line 6
    const-string v2, "PluginSubScreen updateNotification error!!\n"

    .line 7
    .line 8
    const-string v3, "LockscreenNotificationIconsOnlyController"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    iget-object v5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 14
    .line 15
    const v7, 0x7f0a0bad

    .line 16
    .line 17
    .line 18
    const v8, 0x7f0a0ba0

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 32
    .line 33
    if-nez v0, :cond_8

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 40
    .line 41
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 71
    .line 72
    iput v8, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    .line 73
    .line 74
    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    .line 75
    .line 76
    iput v7, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagShowConversation:I

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTimeComparator:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Ljava/util/List;

    .line 112
    .line 113
    move v0, v4

    .line 114
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ge v0, v1, :cond_5

    .line 119
    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 138
    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    check-cast v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 144
    .line 145
    iget-object v9, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 146
    .line 147
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 152
    .line 153
    iget-object v10, v10, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v10, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object v10, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 161
    .line 162
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 163
    .line 164
    invoke-virtual {v10, v1, v9, v11}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-ge v4, p1, :cond_7

    .line 179
    .line 180
    new-instance p1, Landroid/widget/ImageView;

    .line 181
    .line 182
    invoke-direct {p1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/widget/ImageView;

    .line 194
    .line 195
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 200
    .line 201
    if-nez v0, :cond_6

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Landroid/widget/ImageView;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {p1, v8, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroid/widget/ImageView;

    .line 247
    .line 248
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p1, v7, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_7
    if-eqz v6, :cond_11

    .line 264
    .line 265
    :try_start_0
    move-object p1, v6

    .line 266
    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-eqz p1, :cond_11

    .line 273
    .line 274
    check-cast v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 275
    .line 276
    invoke-virtual {v6}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->subLauncherUpdateNotification(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :catchall_0
    move-exception p0

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto/16 :goto_6

    .line 308
    .line 309
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 310
    .line 311
    if-nez v0, :cond_9

    .line 312
    .line 313
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 314
    .line 315
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;-><init>(Landroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 319
    .line 320
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 321
    .line 322
    if-nez v0, :cond_a

    .line 323
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .line 328
    .line 329
    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 330
    .line 331
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-lez v0, :cond_b

    .line 338
    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    .line 343
    .line 344
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 345
    .line 346
    iput v8, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    .line 347
    .line 348
    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    .line 349
    .line 350
    iput v7, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagShowConversation:I

    .line 351
    .line 352
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-lez v0, :cond_c

    .line 359
    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 361
    .line 362
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    .line 366
    .line 367
    :cond_c
    move v0, v4

    .line 368
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-ge v0, v1, :cond_e

    .line 373
    .line 374
    if-eqz v6, :cond_d

    .line 375
    .line 376
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    :cond_d
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    check-cast v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 390
    .line 391
    iget-object v1, v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 392
    .line 393
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    check-cast v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 398
    .line 399
    iget-object v9, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    check-cast v10, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 406
    .line 407
    iget-object v10, v10, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 408
    .line 409
    iget-object v10, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 410
    .line 411
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    iget-object v10, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 415
    .line 416
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 417
    .line 418
    invoke-virtual {v10, v1, v9, v11}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V

    .line 419
    .line 420
    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 422
    .line 423
    goto :goto_3

    .line 424
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 425
    .line 426
    iget-object p1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-ge v4, p1, :cond_10

    .line 433
    .line 434
    new-instance p1, Landroid/widget/ImageView;

    .line 435
    .line 436
    invoke-direct {p1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 440
    .line 441
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Landroid/widget/ImageView;

    .line 448
    .line 449
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 454
    .line 455
    if-nez v0, :cond_f

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 459
    .line 460
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    check-cast v0, Landroid/widget/ImageView;

    .line 467
    .line 468
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 476
    .line 477
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    check-cast v0, Landroid/widget/ImageView;

    .line 484
    .line 485
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {p1, v8, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 493
    .line 494
    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    .line 495
    .line 496
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Landroid/widget/ImageView;

    .line 501
    .line 502
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {p1, v7, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 515
    .line 516
    goto :goto_4

    .line 517
    :cond_10
    if-eqz v6, :cond_11

    .line 518
    .line 519
    :try_start_1
    move-object p1, v6

    .line 520
    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 521
    .line 522
    invoke-virtual {p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    if-eqz p1, :cond_11

    .line 527
    .line 528
    check-cast v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 529
    .line 530
    invoke-virtual {v6}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateNotification(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    .line 538
    .line 539
    goto :goto_6

    .line 540
    :catchall_1
    move-exception p0

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p0

    .line 550
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    :cond_11
    :goto_6
    return-void
.end method

.method public final onNotificationTypeChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->lockscreenNotificationTypeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "PluginSubScreen updateNotification error!!\n"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "LockscreenNotificationIconsOnlyController"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void
.end method
