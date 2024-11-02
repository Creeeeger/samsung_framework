.class public final Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$2;

.field public callback:Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$addCallback$5;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    new-instance p1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string p0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
