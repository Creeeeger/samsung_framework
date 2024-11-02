.class public final synthetic Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "dls_state"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mDlsState:I

    .line 17
    .line 18
    return-void
.end method
