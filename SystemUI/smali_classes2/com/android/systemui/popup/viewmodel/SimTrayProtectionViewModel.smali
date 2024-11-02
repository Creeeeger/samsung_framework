.class public final Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field public final mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mRemoveSimTray:Z

.field public mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;-><init>(Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessObserver:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "dismiss : isFoldedState()"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "isRemoveSimtray() : "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 25
    .line 26
    const-string v2, "SimTrayProtectionViewModel"

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->dismiss()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessObserver:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

    .line 2
    .line 3
    return-object p0
.end method

.method public final show(Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_CONTEXTSERVICE_ENABLE_SURVEY:Z

    .line 19
    .line 20
    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 21
    .line 22
    .line 23
    const-string v1, "Unknown"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "factory"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const-string v0, "dismiss"

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v0, "show"

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 52
    .line 53
    const-string v4, "SimTrayProtectionViewModel"

    .line 54
    .line 55
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mRemoveSimTray:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->dismiss()V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const-string/jumbo v2, "type"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const-string/jumbo v2, "waterproof"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    const-string/jumbo v1, "tray"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mWakefulnessObserver:Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel$1;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 103
    .line 104
    sget-boolean v1, Lcom/android/systemui/BasicRune;->POPUPUI_SUPPORT_COVER_SIM_TRAY_DIALOG:Z

    .line 105
    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    iget-object v1, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mSubscreenContext:Landroid/content/Context;

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 119
    .line 120
    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 121
    .line 122
    if-nez v2, :cond_4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    :goto_1
    move-object v4, v1

    .line 128
    iget-object v5, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 129
    .line 130
    move-object v3, v0

    .line 131
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;IZI)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p1, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->show()V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_2
    return-void
.end method
