.class public final Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;
.super Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appList:Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;->appList:Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;->appList:Lcom/android/systemui/controls/ui/util/SALogger$AppStatusList;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
