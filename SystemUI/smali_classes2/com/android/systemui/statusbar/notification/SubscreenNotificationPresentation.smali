.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final contents:Landroid/view/ViewGroup;

.field public final mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

.field public final mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 3

    .line 1
    const p2, 0x7f1402e0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 8
    .line 9
    new-instance p2, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 p3, 0x0

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 44
    .line 45
    or-int/lit8 v1, v1, 0x10

    .line 46
    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "SubScreenNotification"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getLayoutInDisplayCutoutMode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 70
    .line 71
    const-wide/16 v1, 0xbb8

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    .line 84
    or-int/lit8 v1, v1, 0x8

    .line 85
    .line 86
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    if-eqz p4, :cond_2

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    const/4 v0, -0x2

    .line 102
    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    const/16 v0, 0x30

    .line 109
    .line 110
    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 111
    .line 112
    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    .line 113
    .line 114
    invoke-direct {p4, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    const/16 p4, 0x20

    .line 121
    .line 122
    invoke-virtual {p2, p4, p4}, Landroid/view/Window;->setFlags(II)V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo p2, "power"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/os/PowerManager;

    .line 136
    .line 137
    new-instance p2, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 138
    .line 139
    const/4 p3, 0x1

    .line 140
    const-string p4, "SystemUI:SubscreenNotification"

    .line 141
    .line 142
    invoke-virtual {p1, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const/4 p3, 0x0

    .line 147
    const-wide/32 v0, 0x493e0

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p3, v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string p3, "S.S.N.:Partial"

    .line 155
    .line 156
    invoke-direct {p2, p1, p3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 160
    .line 161
    return-void
.end method

.method public static final synthetic access$dismiss$s2046749032(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$show$s2046749032(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 8

    .line 1
    const-string v0, " PRESENTATION dismiss()"

    .line 2
    .line 3
    const-string v1, "S.S.N."

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v0, " PRESENTATION remove tsp rect"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    const/4 v4, -0x1

    .line 31
    const/4 v5, -0x1

    .line 32
    const/4 v6, -0x1

    .line 33
    const-string v7, "cover_detailed_popup"

    .line 34
    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->unregisterAODTspReceiver()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopPresentationDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 68
    .line 69
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    new-array v2, v2, [F

    .line 73
    .line 74
    fill-array-data v2, :array_0

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-wide/16 v1, 0x12c

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$2;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v0

    .line 15
    :goto_0
    const-string v1, " PRESENTATION ON - "

    .line 16
    .line 17
    const-string v2, "S.S.N."

    .line 18
    .line 19
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getFullPopupWindowType()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Landroid/view/Window;->setType(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/16 v1, 0x500

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    .line 60
    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object p1, v0

    .line 83
    :goto_1
    const/4 v1, -0x1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne p1, v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_4
    if-nez v0, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const/16 p1, 0x8

    .line 104
    .line 105
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 106
    .line 107
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 115
    .line 116
    .line 117
    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 124
    .line 125
    .line 126
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 127
    .line 128
    if-eqz p0, :cond_9

    .line 129
    .line 130
    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 132
    .line 133
    .line 134
    :cond_9
    return-void
.end method

.method public final onStop()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, " PRESENTATION OFF Parent- "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "S.S.N."

    .line 30
    .line 31
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    .line 46
    .line 47
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 50
    .line 51
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    .line 52
    .line 53
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iput v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    .line 63
    .line 64
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

    .line 65
    .line 66
    const-string v2, " RELEASE DOZE STATE - onStop"

    .line 67
    .line 68
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 72
    .line 73
    const/16 v2, 0x40

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->requestDozeState(IZ)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final show()V
    .locals 13

    .line 1
    const-string v0, " PRESENTATION show()"

    .line 2
    .line 3
    const-string v1, "S.S.N."

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v5, 0x4

    .line 57
    new-array v5, v5, [I

    .line 58
    .line 59
    aput v0, v5, v2

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    aput v4, v5, v0

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    aput v2, v5, v6

    .line 66
    .line 67
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 68
    .line 69
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFlexMode:Z

    .line 70
    .line 71
    if-eqz v7, :cond_0

    .line 72
    .line 73
    sub-int/2addr v3, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v3, v2

    .line 76
    :goto_0
    const/4 v4, 0x3

    .line 77
    aput v3, v5, v4

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    aget v3, v5, v2

    .line 88
    .line 89
    aget v8, v5, v0

    .line 90
    .line 91
    aget v9, v5, v6

    .line 92
    .line 93
    aget v10, v5, v4

    .line 94
    .line 95
    const-string v11, " PRESENTATION updateAODTspRect("

    .line 96
    .line 97
    const-string v12, ", "

    .line 98
    .line 99
    invoke-static {v11, v3, v12, v8, v12}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v8, ")"

    .line 113
    .line 114
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    aget v8, v5, v2

    .line 125
    .line 126
    aget v9, v5, v0

    .line 127
    .line 128
    aget v10, v5, v6

    .line 129
    .line 130
    aget v11, v5, v4

    .line 131
    .line 132
    const-string v12, "cover_detailed_popup"

    .line 133
    .line 134
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->registerAODTspReceiver()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    const-wide/16 v1, 0x1f4

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 156
    .line 157
    .line 158
    :goto_1
    if-eqz v0, :cond_2

    .line 159
    .line 160
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    if-eqz v0, :cond_4

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 175
    .line 176
    .line 177
    :cond_4
    :goto_2
    return-void
.end method
