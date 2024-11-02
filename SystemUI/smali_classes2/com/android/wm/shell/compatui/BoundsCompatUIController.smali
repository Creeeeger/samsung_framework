.class public final Lcom/android/wm/shell/compatui/BoundsCompatUIController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAlignment:I

.field public final mBoundsCompatUIWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

.field public final mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/wm/shell/compatui/CompatUIController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRotationFrozen:Z

.field public mOrientationPolicy:I

.field public mTaskInfo:Landroid/app/TaskInfo;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;Landroid/app/TaskInfo;Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;Lcom/android/wm/shell/compatui/CompatUIController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BoundsCompatUIController"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x1f

    .line 9
    .line 10
    iput v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mOrientationPolicy:I

    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    iput v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mBoundsCompatUIWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 19
    .line 20
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mWindowManager:Landroid/view/IWindowManager;

    .line 25
    .line 26
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 31
    .line 32
    const-string p2, "accessibility"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 43
    .line 44
    new-instance p1, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mHandler:Landroid/os/Handler;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mController:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 58
    .line 59
    return-void
.end method

.method public static isAlignedVertically(Landroid/app/TaskInfo;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-le v0, p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method


# virtual methods
.method public final getActivityBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final setBoundsCompatAlignment(I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 6
    .line 7
    and-int/lit8 v1, v0, 0x70

    .line 8
    .line 9
    and-int/lit8 v2, v0, 0x7

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v4, 0x50

    .line 14
    .line 15
    const/16 v5, 0x30

    .line 16
    .line 17
    if-ne p1, v5, :cond_1

    .line 18
    .line 19
    and-int/lit8 p1, v0, 0x50

    .line 20
    .line 21
    if-ne p1, v4, :cond_0

    .line 22
    .line 23
    or-int/lit8 p1, v2, 0x10

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    or-int/lit8 p1, v2, 0x30

    .line 27
    .line 28
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 29
    .line 30
    goto :goto_4

    .line 31
    :cond_1
    if-ne p1, v4, :cond_3

    .line 32
    .line 33
    and-int/lit8 p1, v0, 0x30

    .line 34
    .line 35
    if-ne p1, v5, :cond_2

    .line 36
    .line 37
    or-int/lit8 p1, v2, 0x10

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    or-int/lit8 p1, v2, 0x50

    .line 41
    .line 42
    :goto_1
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_3
    const/4 v2, 0x5

    .line 46
    const/4 v4, 0x3

    .line 47
    if-ne p1, v4, :cond_5

    .line 48
    .line 49
    and-int/lit8 p1, v0, 0x5

    .line 50
    .line 51
    if-ne p1, v2, :cond_4

    .line 52
    .line 53
    or-int/lit8 p1, v1, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    or-int/lit8 p1, v1, 0x3

    .line 57
    .line 58
    :goto_2
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    if-ne p1, v2, :cond_7

    .line 62
    .line 63
    and-int/lit8 p1, v0, 0x3

    .line 64
    .line 65
    if-ne p1, v4, :cond_6

    .line 66
    .line 67
    or-int/lit8 p1, v1, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    or-int/lit8 p1, v1, 0x5

    .line 71
    .line 72
    :goto_3
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 73
    .line 74
    :goto_4
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 75
    .line 76
    iget p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 77
    .line 78
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->setBoundsCompatAlignment(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_5

    .line 82
    :catch_0
    move-exception p0

    .line 83
    const-string p1, "Failed to set bounds compat alignment"

    .line 84
    .line 85
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_7
    const-string p0, "Nothing to do"

    .line 90
    .line 91
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_8
    :goto_5
    return-void
.end method

.method public final setOrientationControlPolicy(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mOrientationPolicy:I

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 10
    .line 11
    iget-object v2, v2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityTaskManager;->setOrientationControlPolicy(ILjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mWindowManager:Landroid/view/IWindowManager;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->getWindowingMode(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-interface {p1, v0, v1}, Landroid/view/IWindowManager;->setWindowingMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "enableOrientationControlPolicy failed"

    .line 35
    .line 36
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "{taskId="

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 18
    .line 19
    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "("

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 30
    .line 31
    iget-object v1, v1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "), taskConfig="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", inSizeCompat="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 60
    .line 61
    iget-boolean v2, v1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    iget-boolean v2, v1, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 66
    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    iget-boolean v1, v1, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 70
    .line 71
    if-nez v1, :cond_0

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", inFixedAspectRatio="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 85
    .line 86
    iget-boolean v1, v1, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", inDisplayCompat="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 97
    .line 98
    iget-boolean v1, v1, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", rotationFrozen="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mIsRotationFrozen:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", orientationPolicy="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mOrientationPolicy:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", activityBounds="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 129
    .line 130
    iget-object v1, v1, Landroid/app/TaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", taskOrientation="

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ", contextOrientation="

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, ", alignment=0x"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 177
    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, ", resizeable="

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 191
    .line 192
    iget-boolean v1, v1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, ", visible="

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 203
    .line 204
    iget-boolean p0, p0, Landroid/app/TaskInfo;->isVisible:Z

    .line 205
    .line 206
    const-string/jumbo v1, "}"

    .line 207
    .line 208
    .line 209
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0
.end method
