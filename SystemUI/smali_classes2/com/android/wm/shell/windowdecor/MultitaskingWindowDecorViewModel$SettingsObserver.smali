.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mColorThemeColorUri:Landroid/net/Uri;

.field public final mFullScreenUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "wallpapertheme_color"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->mColorThemeColorUri:Landroid/net/Uri;

    .line 19
    .line 20
    const-string v1, "multi_window_menu_in_full_screen"

    .line 21
    .line 22
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->mFullScreenUri:Landroid/net/Uri;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, -0x1

    .line 30
    invoke-virtual {p2, v0, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->-$$Nest$mupdateColorThemeState(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 34
    .line 35
    .line 36
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->-$$Nest$mupdateFullscreenHandlerState(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->mColorThemeColorUri:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->mFullScreenUri:Landroid/net/Uri;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
