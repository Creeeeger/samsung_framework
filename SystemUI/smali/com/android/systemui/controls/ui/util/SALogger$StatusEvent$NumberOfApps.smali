.class public final Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;
.super Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
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
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->selectedApps:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->totalApps:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->selectedApps:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;->totalApps:I

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
