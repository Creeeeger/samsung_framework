.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final screen:Lcom/android/systemui/controls/ui/util/SALogger$Screen;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;->screen:Lcom/android/systemui/controls/ui/util/SALogger$Screen;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;->screen:Lcom/android/systemui/controls/ui/util/SALogger$Screen;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/SALogger$Screen;->getScreenId()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$QuitDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$QuitDevices;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
