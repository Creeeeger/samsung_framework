.class public final Lcom/android/systemui/controls/ui/util/SALogger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;


# instance fields
.field public final systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/controls/ui/util/SALogger;->Companion:Lcom/android/systemui/controls/ui/util/SALogger$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;->sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SALogger$Screen;->getScreenId()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsPreference;->Companion:Lcom/android/systemui/controls/ui/util/ControlsPreference$Companion;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;->getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger;->systemUIAnalyticsWrapper:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;->getStatusEventId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "controls_prefs"

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
