.class public final Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDlsState:I

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "dls_state"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mDlsState:I

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final notify(I)V
    .locals 4

    .line 1
    const-string v0, "WallpaperChangeNotifier"

    .line 2
    .line 3
    const-string v1, "notify: which = "

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v3, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v3, p1}, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v1, 0x1f4

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method
