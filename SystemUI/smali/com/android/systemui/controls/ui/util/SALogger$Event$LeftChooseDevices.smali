.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appName:Ljava/lang/String;

.field public final numberOfSelectedControls:I

.field public final numberOfStructures:I

.field public final numberOfTotalControls:I

.field public final numberOfZones:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->appName:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfSelectedControls:I

    .line 8
    .line 9
    iput p3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfTotalControls:I

    .line 10
    .line 11
    iput p4, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfStructures:I

    .line 12
    .line 13
    iput p5, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfZones:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 5

    .line 1
    sget-object p1, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;

    .line 4
    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AppName;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AppName;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->appName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;

    .line 18
    .line 19
    iget v3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfSelectedControls:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AllControls;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AllControls;

    .line 29
    .line 30
    iget v3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfTotalControls:I

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Structure;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Structure;

    .line 40
    .line 41
    iget v3, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfStructures:I

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Zone;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Zone;

    .line 51
    .line 52
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;->numberOfZones:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;->getScreenId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;->getEventId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v1, 0xa

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/16 v2, 0x10

    .line 86
    .line 87
    if-ge v1, v2, :cond_0

    .line 88
    .line 89
    move v1, v2

    .line 90
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v4, Lkotlin/Pair;

    .line 126
    .line 127
    invoke-direct {v4, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
