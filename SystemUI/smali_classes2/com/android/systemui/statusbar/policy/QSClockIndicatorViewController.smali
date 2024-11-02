.class public final Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final dateClockStateCallback:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final qsClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final timeFormatChangedListener:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public final view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 13
    .line 14
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->qsClockBellTower:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    .line 17
    .line 18
    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->dateClockStateCallback:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;

    .line 24
    .line 25
    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->timeFormatChangedListener:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;

    .line 31
    .line 32
    iput-object p7, p1, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 33
    .line 34
    invoke-virtual {p9}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->callers:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, " visibility = "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, " set from "

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    .line 35
    .line 36
    const-string v0, " clockVisibleByQuickStar = "

    .line 37
    .line 38
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    .line 42
    .line 43
    const-string p2, " clockVisibleByDisableFlags = "

    .line 44
    .line 45
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f071244

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    mul-float/2addr v1, v0

    .line 30
    float-to-int v0, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    int-to-float v0, v0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->onDensityOrFontScaleChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "clock"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->clockVisibleByUser:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->calculateVisibility()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 p1, 0x8

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "time_12_24"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->timeFormatChangedListener:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "icon_blacklist"

    .line 34
    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 40
    .line 41
    invoke-virtual {v2, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const-string/jumbo v0, "status_bar_show_date"

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->dateClockStateCallback:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;

    .line 60
    .line 61
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->onDensityOrFontScaleChanged()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->view:Lcom/android/systemui/statusbar/policy/QSClockIndicatorView;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->timeFormatChangedListener:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$timeFormatChangedListener$1;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 25
    .line 26
    .line 27
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;->dateClockStateCallback:Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController$dateClockStateCallback$1;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
