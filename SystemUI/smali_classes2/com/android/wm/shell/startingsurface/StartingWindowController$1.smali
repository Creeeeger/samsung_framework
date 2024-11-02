.class public final Lcom/android/wm/shell/startingsurface/StartingWindowController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$1;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sget-boolean v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIsNightMode:Z

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    sget v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->$r8$clinit:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSettingObserver:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SettingObserver;->updateSettings(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sput-boolean p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIsNightMode:Z

    .line 27
    .line 28
    return-void
.end method
