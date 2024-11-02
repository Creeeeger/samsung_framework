.class public final Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x2

    .line 25
    if-ne v1, v4, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 31
    .line 32
    iget v6, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastTaskId:I

    .line 33
    .line 34
    if-ne v5, v6, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    .line 38
    .line 39
    if-nez v5, :cond_7

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    iget v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityType:I

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    if-ne v1, v5, :cond_5

    .line 53
    .line 54
    iget-boolean v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterAssistant:Z

    .line 55
    .line 56
    if-nez v5, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    const/4 v5, 0x5

    .line 60
    if-ne v1, v5, :cond_6

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterDream:Z

    .line 63
    .line 64
    if-nez v1, :cond_6

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_6
    move v1, v3

    .line 68
    goto :goto_2

    .line 69
    :cond_7
    :goto_1
    move v1, v2

    .line 70
    :goto_2
    if-eqz v1, :cond_8

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    .line 73
    .line 74
    const/16 v5, 0xb

    .line 75
    .line 76
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 77
    .line 78
    .line 79
    :cond_8
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 80
    .line 81
    iput v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastTaskId:I

    .line 82
    .line 83
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 84
    .line 85
    iput v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityType:I

    .line 86
    .line 87
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 88
    .line 89
    iget v5, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 90
    .line 91
    and-int/2addr v5, v4

    .line 92
    if-nez v5, :cond_a

    .line 93
    .line 94
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    const-string v6, "android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"

    .line 99
    .line 100
    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_9

    .line 105
    .line 106
    move v1, v3

    .line 107
    goto :goto_3

    .line 108
    :cond_9
    const-string v1, "HomeSoundEffectController"

    .line 109
    .line 110
    const-string v5, "Activity has flag playHomeTransition set to false but doesn\'t hold required permission android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"

    .line 111
    .line 112
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_a
    move v1, v2

    .line 116
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    .line 117
    .line 118
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 119
    .line 120
    if-ne v1, v4, :cond_b

    .line 121
    .line 122
    move v1, v3

    .line 123
    goto :goto_4

    .line 124
    :cond_b
    move v1, v2

    .line 125
    :goto_4
    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 126
    .line 127
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastHomePackageName:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v1, :cond_c

    .line 136
    .line 137
    if-eqz v4, :cond_d

    .line 138
    .line 139
    :cond_c
    move v2, v3

    .line 140
    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    .line 141
    .line 142
    if-eqz v1, :cond_e

    .line 143
    .line 144
    if-nez v4, :cond_e

    .line 145
    .line 146
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 147
    .line 148
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastHomePackageName:Ljava/lang/String;

    .line 151
    .line 152
    :cond_e
    :goto_5
    return-void
.end method
