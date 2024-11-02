.class public final Lcom/android/systemui/media/controls/ui/KeyguardMediaController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final lockScreenMediaPlayerUri:Landroid/net/Uri;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public useSplitShade:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$1;-><init>(Lcom/android/systemui/media/controls/ui/KeyguardMediaController;)V

    .line 11
    .line 12
    .line 13
    check-cast p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;-><init>(Lcom/android/systemui/media/controls/ui/KeyguardMediaController;)V

    .line 21
    .line 22
    .line 23
    check-cast p6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    .line 25
    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$settingsObserver$1;

    .line 29
    .line 30
    invoke-direct {p1, p0, p5}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$settingsObserver$1;-><init>(Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Landroid/os/Handler;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p2, "media_controls_lock_screen"

    .line 34
    .line 35
    .line 36
    const/4 p5, -0x1

    .line 37
    invoke-interface {p4, p2, p1, p5}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-boolean p3, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 49
    .line 50
    if-ne p3, p1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 54
    .line 55
    :goto_0
    const/4 p1, 0x1

    .line 56
    const/4 p3, -0x2

    .line 57
    invoke-interface {p4, p3, p2, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getBoolForUser(ILjava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->lockScreenMediaPlayerUri:Landroid/net/Uri;

    .line 65
    .line 66
    return-void
.end method

.method public static synthetic getUseSplitShade$annotations()V
    .locals 0

    .line 1
    return-void
.end method
