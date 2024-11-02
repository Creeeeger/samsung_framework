.class public final Lcom/android/systemui/qp/SubscreenQsPanelController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;
.implements Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;


# instance fields
.field public mBaseViewController:Lcom/android/systemui/util/ViewController;

.field public final mBaseViewFactory:Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

.field public final mFactory:Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sput-object p1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 15
    .line 16
    const-class p1, Lcom/android/systemui/util/QsResetSettingsManager;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/android/systemui/util/QsResetSettingsManager;

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Lcom/android/systemui/util/QsResetSettingsManager;->registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/systemui/util/QsResetSettingsManager;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/android/systemui/util/QsResetSettingsManager;->registerDemoApplier(Lcom/android/systemui/util/QsResetSettingsManager$DemoResetSettingsApplier;)V

    .line 34
    .line 35
    .line 36
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    sget-object p1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string/jumbo p2, "sub_screen_brightness_mode"

    .line 47
    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance p1, Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mFactory:Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

    .line 59
    .line 60
    new-instance p1, Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;-><init>(Lcom/android/systemui/qp/SubscreenQsPanelController;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewFactory:Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final applyDemoResetSetting()V
    .locals 2

    .line 1
    const-string p0, "SubscreenQsPanelController"

    .line 2
    .line 3
    const-string v0, "applyDemoResetSetting"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v0, "ShowDifferentHelpViewText"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "helpViewTextCount"

    .line 22
    .line 23
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final applyResetSetting()V
    .locals 2

    .line 1
    const-string p0, "SubscreenQsPanelController"

    .line 2
    .line 3
    const-string v0, "applyResetSetting"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 9
    .line 10
    const-string/jumbo v0, "sub_screen_brightness_mode"

    .line 11
    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final getInstance(I)Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mFactory:Lcom/android/systemui/qp/SubscreenQuickSettingsControllerFactory;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    if-eq p1, p0, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x3

    .line 15
    if-eq p1, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenAirplaneController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenBleController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenBleController;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/qp/SubscreenWifiController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenWifiController;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0
.end method

.method public final getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 16
    .line 17
    return-object p0
.end method

.method public final init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewFactory:Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 7
    .line 8
    const v2, 0x7f0a0b46

    .line 9
    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    .line 14
    .line 15
    sget-object v3, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenQsPanelController$SubroomQuickSettingsBaseViewFactory;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 28
    .line 29
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;Lcom/android/systemui/qs/QSTileHost;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;

    .line 38
    .line 39
    sget-object v0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lcom/android/systemui/qp/SubscreenBaseViewControllerBase;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewController:Lcom/android/systemui/util/ViewController;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "init() controller: "

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewController:Lcom/android/systemui/util/ViewController;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "SubscreenQsPanelController"

    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelController;->mBaseViewController:Lcom/android/systemui/util/ViewController;

    .line 78
    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    invoke-interface {p0}, Lcom/android/systemui/qp/SubscreenQSControllerContract$BaseViewController;->initView()V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method
