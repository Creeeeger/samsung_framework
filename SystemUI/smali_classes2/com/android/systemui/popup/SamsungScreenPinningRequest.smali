.class public final Lcom/android/systemui/popup/SamsungScreenPinningRequest;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public mAppName:Ljava/lang/String;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public mDialog:Landroid/app/AlertDialog;

.field public mIsExcluded:Z

.field public final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public mNavBarMode:I

.field public final mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

.field public final mPinWindowsReceiver:Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

.field public mTaskId:I

.field public mTouchExplorationEnabled:Z

.field public final mWindowManagerWrapper:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;-><init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 14
    .line 15
    sget-object p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 18
    .line 19
    sget-object p1, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 22
    .line 23
    sget-object p1, Lcom/android/systemui/shared/launcher/WindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 26
    .line 27
    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    .line 40
    .line 41
    iput-object p3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final clearPrompt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public final createDialog(ILandroid/widget/LinearLayout;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f140560

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const v1, 0x7f130a82

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    .line 35
    const p1, 0x7f130a83

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    .line 45
    .line 46
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const v1, 0x7f130a8a

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    const p1, 0x7f130a89

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    const p1, 0x104000a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const p1, 0x7f130a81

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    const p1, 0x7f130a80

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 83
    .line 84
    .line 85
    new-instance p1, Lcom/android/systemui/popup/SamsungScreenPinningRequest$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V

    .line 88
    .line 89
    .line 90
    const p2, 0x7f130c57

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "SamsungScreenPinningRequest"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/16 p2, 0x7d8

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const/16 p2, 0x10

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p1, p2, :cond_3

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, p2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    .line 26
    .line 27
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f130a8b

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 51
    .line 52
    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTouchExplorationEnabled()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "accessibility"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move v2, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v1

    .line 24
    :goto_0
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :goto_1
    return v0
.end method
