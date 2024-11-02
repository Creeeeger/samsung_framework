.class public Lcom/android/systemui/qs/buttons/QSMumButton;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mExpanded:Z

.field public mListening:Z

.field public mMultiUserAvatar:Landroid/widget/ImageView;

.field public mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field public final mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public final mToolTipString:I

.field public final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field public final mUserInteractor:Lcom/android/systemui/user/domain/interactor/UserInteractor;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;I)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-class p2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 23
    .line 24
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 25
    .line 26
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    const-class p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 41
    .line 42
    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 43
    .line 44
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 57
    .line 58
    const p2, 0x7f131159

    .line 59
    .line 60
    .line 61
    iput p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mToolTipString:I

    .line 62
    .line 63
    const-class p2, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInteractor:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 72
    .line 73
    const-class p2, Landroid/os/UserManager;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/os/UserManager;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserManager:Landroid/os/UserManager;

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final closeTooltip()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->hideToolTip()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->checkMumRune()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    .line 22
    .line 23
    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 41
    .line 42
    .line 43
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    new-instance v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    .line 70
    .line 71
    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 78
    .line 79
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton;->updateTouchTargetArea()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mListening:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 10
    .line 11
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMumAndDexHelper:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    .line 15
    .line 16
    if-eqz p0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->checkMumRune()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 32
    .line 33
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 36
    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton;->updateTouchTargetArea()V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0710

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 17
    .line 18
    const v1, 0x7f0a070f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 28
    .line 29
    sget-object v0, Lcom/android/systemui/util/TouchDelegateUtil;->INSTANCE:Lcom/android/systemui/util/TouchDelegateUtil;

    .line 30
    .line 31
    const v1, 0x7f0a0712

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/android/systemui/util/TouchDelegateUtil;->expandTouchAreaAsParent(Landroid/view/View;Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 47
    .line 48
    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 57
    .line 58
    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final updateTouchTargetArea()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getButtonsWidth(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f070e70

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
