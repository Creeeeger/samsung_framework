.class public final Lcom/android/systemui/aod/AODAmbientWallpaperHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isFolded:Z

.field public isMainWonderLandWallpaper:Z

.field public isSubWonderLandWallpaper:Z

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final statusBarWindowControllerLazy:Ldagger/Lazy;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Landroid/app/WallpaperManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Landroid/app/WallpaperManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->statusBarWindowControllerLazy:Ldagger/Lazy;

    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    .line 23
    .line 24
    new-instance p1, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;-><init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p5, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final isAODAmbientWallpaperMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    .line 10
    .line 11
    or-int/2addr p0, v0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method public final isAODFullScreenMode()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 18
    .line 19
    const-string v2, "aod_show_lockscreen_wallpaper"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    move v0, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_FULLSCREEN:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :cond_1
    move v1, v3

    .line 45
    :cond_2
    return v1
.end method

.method public final isWonderLandAmbientWallpaper()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    .line 6
    .line 7
    const-string v3, "isWonderLandAmbientWallpaper: isFolded="

    .line 8
    .line 9
    const-string v4, ", isMainWonderLandWallpaper="

    .line 10
    .line 11
    const-string v5, ", isSubWonderLandWallpaper="

    .line 12
    .line 13
    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "AODAmbientWallpaperHelper"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_LOCK:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isFolded:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isSubWonderLandWallpaper:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isMainWonderLandWallpaper:Z

    .line 37
    .line 38
    :goto_0
    return p0
.end method

.method public final setAODAmbientWallpaperState(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->statusBarWindowControllerLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    .line 12
    .line 13
    if-eq v1, p1, :cond_0

    .line 14
    .line 15
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "setAODAmbientWallpaperState: wakingUp="

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "StatusBarWindowController"

    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
