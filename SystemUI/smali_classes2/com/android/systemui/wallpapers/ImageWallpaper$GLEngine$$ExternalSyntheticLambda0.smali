.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->$r8$lambda$gvSO08LS-V1OEOlvWqQf1uysZ84(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->finishRendering()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateRendering()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglContext()V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->drawFrame()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 46
    .line 47
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0x15

    .line 54
    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 70
    .line 71
    check-cast p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateSurfaceSizeIfNeed()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->finishRendering()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->drawFrame()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void

    .line 98
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->finishRendering()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->drawFrame()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->drawFrame()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 133
    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 139
    .line 140
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 147
    .line 148
    invoke-static {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->$r8$lambda$InHMzcxP9yIB3NrHGHisYRbdVpE(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
