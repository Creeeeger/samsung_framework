.class public final Lcom/android/systemui/media/controls/ui/MediaPlayerData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

.field public static final comparator:Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$8;

.field public static final mediaData:Ljava/util/Map;

.field public static final mediaPlayers:Ljava/util/TreeMap;

.field public static final visibleMediaPlayers:Ljava/util/LinkedHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 18
    .line 19
    move-object v9, v10

    .line 20
    const/4 v11, 0x0

    .line 21
    const-string v12, "INVALID"

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v15, 0x0

    .line 26
    const/16 v16, 0x1

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    const/16 v19, 0x0

    .line 33
    .line 34
    const/16 v20, 0x0

    .line 35
    .line 36
    const/16 v21, 0x0

    .line 37
    .line 38
    const/16 v22, 0x0

    .line 39
    .line 40
    const/16 v23, 0x0

    .line 41
    .line 42
    const-wide/16 v24, 0x0

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    invoke-static {v0}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    .line 46
    .line 47
    .line 48
    move-result-object v26

    .line 49
    const/16 v27, -0x1

    .line 50
    .line 51
    const/16 v28, 0x0

    .line 52
    .line 53
    const/16 v29, 0x0

    .line 54
    .line 55
    const/16 v30, 0x0

    .line 56
    .line 57
    const v31, 0xe7f0200

    .line 58
    .line 59
    .line 60
    const/16 v32, 0x0

    .line 61
    .line 62
    invoke-direct/range {v1 .. v32}, Lcom/android/systemui/media/controls/models/player/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;Lcom/android/systemui/media/controls/models/player/SecMediaDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$compareByDescending$1;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$compareByDescending$1;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$2;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$3;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$3;-><init>(Ljava/util/Comparator;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$4;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$4;-><init>(Ljava/util/Comparator;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$5;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$5;-><init>(Ljava/util/Comparator;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$6;

    .line 96
    .line 97
    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$6;-><init>(Ljava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$7;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$7;-><init>(Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$8;

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$8;-><init>(Ljava/util/Comparator;)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->comparator:Lcom/android/systemui/media/controls/ui/MediaPlayerData$special$$inlined$thenByDescending$8;

    .line 111
    .line 112
    new-instance v1, Ljava/util/TreeMap;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 115
    .line 116
    .line 117
    sput-object v1, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 118
    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 125
    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaData:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
