.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final selectedApps:I

.field public final totalApps:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->selectedApps:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->totalApps:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->selectedApps:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;->totalApps:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v4, "Dvcs01"

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v5, "Dvcs013"

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const-string/jumbo v6, "num of selected apps"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v8, "num of total apps"

    .line 44
    .line 45
    .line 46
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
