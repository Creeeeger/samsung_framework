.class public final Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public IsDexEnablingOrEnabled:Z

.field public final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field public mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

.field public final mSettingCallback:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    const-string/jumbo p1, "two_call_enabled"

    .line 4
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "two_sms_enabled"

    .line 5
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "two_account"

    .line 6
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "two_register"

    .line 7
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "user_switcher_enabled"

    .line 8
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {p1, v0, v1, v2, v3}, [Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 9
    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    return-void
.end method


# virtual methods
.method public final checkMumRune()Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LDU_BRANDING:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isShopDemo(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    const-string v2, "checkMumRune: mumRune["

    .line 19
    .line 20
    const-string v3, "] lduBranding["

    .line 21
    .line 22
    const-string v4, "] shopDemo["

    .line 23
    .line 24
    invoke-static {v2, v1, v3, v0, v4}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, "]"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "QSMumButton"

    .line 41
    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v1
.end method

.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    .line 1
    const-string v0, "QSMumButton"

    .line 2
    .line 3
    const-string v1, "MumAndDexHelper, onDesktopModeStateChanged()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "MumAndDexHelper, onUserInfoChanged(name:"

    .line 8
    .line 9
    const-string v1, ", userAccount:"

    .line 10
    .line 11
    const-string v2, ")"

    .line 12
    .line 13
    invoke-static {v0, p1, v1, p3, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    const-string v0, "QSMumButton"

    .line 18
    .line 19
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p3, 0x0

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isGuestUser(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    instance-of v1, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    const v2, 0x1010030

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 75
    .line 76
    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const v1, 0x7f13010a

    .line 89
    .line 90
    .line 91
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p2, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p2, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    :cond_0
    move p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 22
    .line 23
    if-eq v1, p1, :cond_2

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "MumAndDexHelper updateDesktopModeState() IsDexEnablingOrEnabled:"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 33
    .line 34
    const-string v3, ">>"

    .line 35
    .line 36
    const-string v4, "QSMumButton"

    .line 37
    .line 38
    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;I)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final updateMumSwitchVisibility()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 4
    .line 5
    if-eqz v1, :cond_d

    .line 6
    .line 7
    sget-object v1, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 8
    .line 9
    const-string v1, "debug.quick_mum_test_trigger"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->checkMumRune()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_1
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v1, v2

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    move v5, v3

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v5, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v4, v2

    .line 74
    move v5, v4

    .line 75
    :goto_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const-string v7, "HasSeenMultiUser"

    .line 80
    .line 81
    invoke-static {v6, v7, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    iget-object v7, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 86
    .line 87
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isUserSwitcherSettingOn()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    if-eqz v6, :cond_5

    .line 96
    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move v8, v2

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    :goto_2
    move v8, v3

    .line 103
    :goto_3
    iget-object v9, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserManager:Landroid/os/UserManager;

    .line 104
    .line 105
    const-string v10, "no_user_switch"

    .line 106
    .line 107
    invoke-virtual {v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const-class v10, Lcom/android/systemui/util/DesktopManager;

    .line 112
    .line 113
    if-eqz v8, :cond_9

    .line 114
    .line 115
    iget-boolean v11, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 116
    .line 117
    if-nez v11, :cond_9

    .line 118
    .line 119
    iget-object v11, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 120
    .line 121
    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-nez v11, :cond_9

    .line 126
    .line 127
    iget-object v11, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    iget v11, v11, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 138
    .line 139
    if-ne v11, v3, :cond_7

    .line 140
    .line 141
    move v11, v3

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    move v11, v2

    .line 144
    :goto_4
    if-nez v11, :cond_9

    .line 145
    .line 146
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Lcom/android/systemui/util/DesktopManager;

    .line 151
    .line 152
    check-cast v11, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 153
    .line 154
    invoke-virtual {v11}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    if-nez v11, :cond_9

    .line 159
    .line 160
    const-class v11, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 161
    .line 162
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    check-cast v11, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 167
    .line 168
    check-cast v11, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 169
    .line 170
    iget-object v11, v11, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 171
    .line 172
    if-eqz v11, :cond_8

    .line 173
    .line 174
    iget-boolean v11, v11, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtonUsers:Z

    .line 175
    .line 176
    if-eqz v11, :cond_8

    .line 177
    .line 178
    move v11, v3

    .line 179
    goto :goto_5

    .line 180
    :cond_8
    move v11, v2

    .line 181
    :goto_5
    if-eqz v11, :cond_9

    .line 182
    .line 183
    iget-object v11, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-nez v11, :cond_9

    .line 190
    .line 191
    iget-boolean v11, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    .line 192
    .line 193
    if-eqz v11, :cond_9

    .line 194
    .line 195
    if-nez v9, :cond_9

    .line 196
    .line 197
    move v11, v3

    .line 198
    goto :goto_6

    .line 199
    :cond_9
    move v11, v2

    .line 200
    :goto_6
    const-string v12, "needToBeVisible() result:"

    .line 201
    .line 202
    const-string v13, " [MumSetting?"

    .line 203
    .line 204
    const-string v14, " = (TwoPhoneSetting:"

    .line 205
    .line 206
    invoke-static {v12, v11, v13, v8, v14}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, " || (somethingInDetail("

    .line 214
    .line 215
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, "):"

    .line 222
    .line 223
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, " && Pref:"

    .line 227
    .line 228
    const-string v4, " && Settings:"

    .line 229
    .line 230
    invoke-static {v8, v5, v1, v6, v4}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ")), DEX-(DeviceState?"

    .line 237
    .line 238
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 252
    .line 253
    if-ne v1, v3, :cond_a

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_a
    move v3, v2

    .line 257
    :goto_7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", DesktopManager?"

    .line 261
    .line 262
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    .line 270
    .line 271
    check-cast v1, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, ", SemDesktopModeStateEnable?"

    .line 281
    .line 282
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-boolean p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 286
    .line 287
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string p0, ") Panel-mExpanded?"

    .line 291
    .line 292
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-boolean p0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mExpanded:Z

    .line 296
    .line 297
    const-string v1, ", isDisallowUserSwitch = "

    .line 298
    .line 299
    const-string v3, "QSMumButton"

    .line 300
    .line 301
    invoke-static {v8, p0, v1, v9, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    move v3, v11

    .line 305
    :goto_8
    const/16 p0, 0x8

    .line 306
    .line 307
    if-eqz v3, :cond_b

    .line 308
    .line 309
    move v1, v2

    .line 310
    goto :goto_9

    .line 311
    :cond_b
    move v1, p0

    .line 312
    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 316
    .line 317
    if-eqz v3, :cond_c

    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_c
    move v2, p0

    .line 321
    :goto_a
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    iget-object p0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 325
    .line 326
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 327
    .line 328
    .line 329
    iget-object p0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 330
    .line 331
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    .line 332
    .line 333
    .line 334
    :cond_d
    return-void
.end method
