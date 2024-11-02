.class public final Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "SystemUIWallpaper"

    .line 2
    .line 3
    const-string v1, "mUpdateCallable, start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "display"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    .line 38
    .line 39
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 80
    .line 81
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 82
    .line 83
    iput v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 84
    .line 85
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .line 87
    iput v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 90
    .line 91
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-eq v1, v2, :cond_4

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    if-ne v1, v2, :cond_5

    .line 98
    .line 99
    :cond_4
    const-string v2, "mUpdateCallable, deviceRotation="

    .line 100
    .line 101
    const-string v3, "mMetricsWidth="

    .line 102
    .line 103
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, " mMetricsHeight="

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 118
    .line 119
    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 123
    .line 124
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 125
    .line 126
    iput v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 127
    .line 128
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 129
    .line 130
    iput v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 131
    .line 132
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    iput-wide v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "mUpdateCallable, end, "

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 146
    .line 147
    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, ", "

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 158
    .line 159
    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 160
    .line 161
    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    .line 165
    .line 166
    return-object p0
.end method
