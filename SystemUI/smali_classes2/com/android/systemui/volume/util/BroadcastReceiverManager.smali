.class public final Lcom/android/systemui/volume/util/BroadcastReceiverManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiverItemMap:Ljava/util/Map;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DISPLAY_MANAGER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 9
    .line 10
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 11
    .line 12
    sget-object p3, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->INSTANCE:Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-direct {v2, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->ALLSOUND_OFF:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 32
    .line 33
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lkotlin/Pair;

    .line 43
    .line 44
    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MIRROR_LINK:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 48
    .line 49
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lkotlin/Pair;

    .line 59
    .line 60
    invoke-direct {v4, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_TOGETHER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 64
    .line 65
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Lkotlin/Pair;

    .line 75
    .line 76
    invoke-direct {v5, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MUSIC_SHARE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 80
    .line 81
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    new-instance v6, Lkotlin/Pair;

    .line 91
    .line 92
    invoke-direct {v6, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DUAL_AUDIO_MODE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 96
    .line 97
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lkotlin/Pair;

    .line 107
    .line 108
    invoke-direct {v7, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HEADSET_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 112
    .line 113
    new-instance p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-direct {p2, p3, v0, v1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    new-instance v8, Lkotlin/Pair;

    .line 123
    .line 124
    invoke-direct {v8, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    filled-new-array/range {v2 .. v8}, [Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    .line 136
    .line 137
    return-void
.end method
