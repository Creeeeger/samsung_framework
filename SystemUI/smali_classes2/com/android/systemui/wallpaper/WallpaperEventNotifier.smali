.class public final Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mCoverCallbacks:Ljava/util/ArrayList;

.field public mCurStatusFlag:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsThemeApplying:Z

.field public final mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

.field public final mLogs:Ljava/util/ArrayList;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    const-string/jumbo p3, "wallpaper"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroid/app/WallpaperManager;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 44
    .line 45
    new-instance p3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 46
    .line 47
    invoke-direct {p3, p1, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 51
    .line 52
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final addLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v0, 0xc8

    .line 16
    .line 17
    if-le p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p3, ", isCover = "

    .line 16
    .line 17
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ", colors = "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    if-eqz p4, :cond_0

    .line 36
    .line 37
    invoke-virtual {p4}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p1, "null"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :goto_0
    const-string p1, ": "

    .line 51
    .line 52
    invoke-static {p5, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string p3, "WallpaperEventNotifier"

    .line 68
    .line 69
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return-object p0
.end method

.method public final registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    .line 8
    :goto_0
    monitor-enter v0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 15
    .line 16
    :goto_1
    const/4 v2, 0x0

    .line 17
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/util/Pair;

    .line 28
    .line 29
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-ne v3, p2, :cond_2

    .line 38
    .line 39
    const-string p0, "WallpaperEventNotifier"

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo p2, "registerCallback: Object tried to add another callback "

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 90
    .line 91
    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 93
    .line 94
    const-string v2, "WallpaperEventNotifier"

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    const-string/jumbo p1, "sendUpdates: Ignore update while theme is applying..."

    .line 99
    .line 100
    .line 101
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    :try_start_1
    iget-object v1, v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsCover:Landroid/util/SparseArray;

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 127
    .line 128
    iget-object v0, v1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object v1, v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 138
    .line 139
    iget-object v0, v1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    :catch_0
    :goto_3
    if-nez v0, :cond_6

    .line 142
    .line 143
    const-string/jumbo p1, "sendUpdates: We don\'t have any colors to notify for now."

    .line 144
    .line 145
    .line 146
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    const-string/jumbo p1, "sendUpdates: We don\'t have any colors to notify for now"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_6
    const-wide/16 v3, 0x0

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    const-wide/16 v5, -0x404

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    iget-wide v5, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 164
    .line 165
    const-wide/16 v7, 0x1

    .line 166
    .line 167
    and-long/2addr v7, v5

    .line 168
    cmp-long v1, v7, v3

    .line 169
    .line 170
    if-nez v1, :cond_8

    .line 171
    .line 172
    const-wide/16 v7, -0x2

    .line 173
    .line 174
    and-long/2addr p3, v7

    .line 175
    :cond_8
    const-wide/16 v7, 0x2

    .line 176
    .line 177
    and-long/2addr v7, v5

    .line 178
    cmp-long v1, v7, v3

    .line 179
    .line 180
    if-nez v1, :cond_9

    .line 181
    .line 182
    const-wide/16 v7, -0x3

    .line 183
    .line 184
    and-long/2addr p3, v7

    .line 185
    :cond_9
    const-wide/16 v7, 0x400

    .line 186
    .line 187
    and-long/2addr v5, v7

    .line 188
    cmp-long v1, v5, v3

    .line 189
    .line 190
    if-nez v1, :cond_a

    .line 191
    .line 192
    const-wide/16 v5, -0x401

    .line 193
    .line 194
    :goto_4
    and-long/2addr p3, v5

    .line 195
    :cond_a
    cmp-long v1, p3, v3

    .line 196
    .line 197
    if-eqz v1, :cond_c

    .line 198
    .line 199
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    .line 200
    .line 201
    if-eqz v1, :cond_b

    .line 202
    .line 203
    const-string/jumbo v8, "sendUpdates"

    .line 204
    .line 205
    .line 206
    move-object v3, p0

    .line 207
    move v4, p1

    .line 208
    move-wide v5, p3

    .line 209
    move-object v7, v0

    .line 210
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string/jumbo p1, "sendUpdates: typesTobeNotified = "

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p3, p4}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    invoke-interface {p2, p3, p4, v0}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_c
    const-string/jumbo p1, "sendUpdates: Nothing to notify"

    .line 240
    .line 241
    .line 242
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_5
    return-void

    .line 249
    :catchall_0
    move-exception p0

    .line 250
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    throw p0
.end method

.method public final removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    .line 8
    :goto_0
    monitor-enter v0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 15
    .line 16
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    :goto_2
    if-ltz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/util/Pair;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-ne v1, p2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 7
    .line 8
    :goto_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    const-string/jumbo p1, "setCurStatusFlag: colors is null. May cause unexptected behaviour!"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 23
    .line 24
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v2, v3, v3, v3}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 33
    .line 34
    iget-object v4, v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-direct {v2, p2, v5, v4, v3}, Lcom/android/systemui/wallpaper/colors/ColorData;-><init>(Landroid/app/SemWallpaperColors;ZZZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Lcom/android/systemui/wallpaper/colors/ColorData;Lcom/android/systemui/wallpaper/colors/ColorData;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final update(ZJLandroid/app/SemWallpaperColors;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "update: Ignore update while theme is applying..."

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "WallpaperEventNotifier"

    .line 18
    .line 19
    const-string/jumbo v1, "update: Ignore update while theme is applying..."

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-eqz v7, :cond_2

    .line 27
    .line 28
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-wide/16 v1, -0x2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-wide/16 v1, -0x404

    .line 36
    .line 37
    :goto_0
    and-long v1, p2, v1

    .line 38
    .line 39
    move-wide v9, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-wide/from16 v9, p2

    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v11, 0x0

    .line 47
    .line 48
    cmp-long v1, v9, v11

    .line 49
    .line 50
    if-eqz v1, :cond_e

    .line 51
    .line 52
    const-string v6, "notifyUpdate"

    .line 53
    .line 54
    move-object/from16 v1, p0

    .line 55
    .line 56
    move/from16 v2, p1

    .line 57
    .line 58
    move-wide v3, v9

    .line 59
    move-object/from16 v5, p4

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 70
    .line 71
    :goto_2
    monitor-enter v1

    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 78
    .line 79
    :goto_3
    const/4 v3, 0x0

    .line 80
    move v4, v3

    .line 81
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-ge v4, v5, :cond_d

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Landroid/util/Pair;

    .line 92
    .line 93
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 102
    .line 103
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v13

    .line 111
    if-eqz v6, :cond_c

    .line 112
    .line 113
    and-long v15, v13, v9

    .line 114
    .line 115
    cmp-long v5, v15, v11

    .line 116
    .line 117
    if-nez v5, :cond_b

    .line 118
    .line 119
    const-wide/16 v15, 0x8

    .line 120
    .line 121
    and-long/2addr v15, v13

    .line 122
    cmp-long v5, v15, v11

    .line 123
    .line 124
    const/4 v7, 0x1

    .line 125
    if-nez v5, :cond_5

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_5
    move v5, v3

    .line 129
    :goto_5
    sget v15, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    .line 130
    .line 131
    if-ge v5, v15, :cond_7

    .line 132
    .line 133
    sget-object v15, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    .line 134
    .line 135
    aget-wide v15, v15, v5

    .line 136
    .line 137
    and-long/2addr v15, v13

    .line 138
    cmp-long v15, v15, v11

    .line 139
    .line 140
    if-eqz v15, :cond_6

    .line 141
    .line 142
    sget-object v15, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    .line 143
    .line 144
    aget-wide v15, v15, v5

    .line 145
    .line 146
    and-long/2addr v15, v9

    .line 147
    cmp-long v15, v15, v11

    .line 148
    .line 149
    if-eqz v15, :cond_6

    .line 150
    .line 151
    move v5, v7

    .line 152
    goto :goto_7

    .line 153
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    :goto_6
    move v5, v3

    .line 157
    :goto_7
    if-nez v5, :cond_b

    .line 158
    .line 159
    const-wide/16 v15, 0x4

    .line 160
    .line 161
    and-long/2addr v15, v13

    .line 162
    cmp-long v5, v15, v11

    .line 163
    .line 164
    if-nez v5, :cond_8

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_8
    move v5, v3

    .line 168
    :goto_8
    sget v15, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    .line 169
    .line 170
    if-ge v5, v15, :cond_a

    .line 171
    .line 172
    sget-object v15, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    .line 173
    .line 174
    aget-wide v15, v15, v5

    .line 175
    .line 176
    and-long/2addr v15, v13

    .line 177
    cmp-long v15, v15, v11

    .line 178
    .line 179
    if-eqz v15, :cond_9

    .line 180
    .line 181
    sget-object v15, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    .line 182
    .line 183
    aget-wide v15, v15, v5

    .line 184
    .line 185
    and-long/2addr v15, v9

    .line 186
    cmp-long v15, v15, v11

    .line 187
    .line 188
    if-eqz v15, :cond_9

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_a
    :goto_9
    move v7, v3

    .line 195
    :goto_a
    if-eqz v7, :cond_c

    .line 196
    .line 197
    :cond_b
    iget-object v5, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    .line 198
    .line 199
    new-instance v7, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda1;

    .line 200
    .line 201
    invoke-direct {v7, v6, v9, v10, v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 208
    .line 209
    goto/16 :goto_4

    .line 210
    .line 211
    :cond_d
    monitor-exit v1

    .line 212
    goto :goto_b

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    throw v0

    .line 216
    :cond_e
    :goto_b
    return-void
.end method
