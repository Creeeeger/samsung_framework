.class public Lcom/android/wm/shell/controlpanel/ControlPanelService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBinder:Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

.field public mIsNightMode:Z

.field public final mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mBinder:Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mBinder:Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mIsNightMode:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mIsNightMode:Z

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eq p0, p1, :cond_2

    .line 24
    .line 25
    throw v0

    .line 26
    :cond_2
    throw v0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    .line 5
    .line 6
    const-string p0, "ControlPanelService"

    .line 7
    .line 8
    const-string v0, "Floating icon is not available"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    const-string/jumbo p0, "startId : "

    .line 2
    .line 3
    .line 4
    const-string p1, "ControlPanelService"

    .line 5
    .line 6
    invoke-static {p0, p3, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method
