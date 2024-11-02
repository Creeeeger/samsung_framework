.class public final Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEntries:Ljava/util/List;

.field public mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mNotificationEntries:Landroid/util/ArrayMap;

.field public mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public mSettingChangeListener:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;

.field mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field mSettingsValue:I

.field public final mSimpleStatusBarMaxNotificationNum:I

.field public final mTimeComparator:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntries:Ljava/util/List;

    .line 9
    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mNotificationEntries:Landroid/util/ArrayMap;

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 30
    .line 31
    new-instance v1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const v2, 0x7f0b0032

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSimpleStatusBarMaxNotificationNum:I

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 62
    .line 63
    const-string/jumbo p1, "simple_status_bar"

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {p1}, [Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
