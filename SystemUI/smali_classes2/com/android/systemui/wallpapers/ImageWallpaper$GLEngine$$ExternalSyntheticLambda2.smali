.class public final synthetic Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v1, p0

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    invoke-virtual {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string v1, "ImageWallpaper[GLEngine]"

    .line 57
    .line 58
    const-string v2, " addLocalColorsAreas "

    .line 59
    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, v1

    .line 80
    const/4 v1, 0x1

    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 87
    .line 88
    iget-object v3, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    .line 89
    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;

    .line 98
    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    new-instance v2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;

    .line 102
    .line 103
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;I)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->use(Ljava/util/function/Consumer;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_1
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
