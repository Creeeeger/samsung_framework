.class public final Lcom/android/systemui/widget/SystemUIButton$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/widget/SystemUIButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLockStarEnabled(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton$1;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsLockStarEnabled:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mGroup:Ljava/lang/String;

    .line 12
    .line 13
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIButton$ResData;->mWallpaperArea:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
