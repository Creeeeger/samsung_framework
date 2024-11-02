.class public abstract Lcom/android/systemui/shared/clocks/ClockRegistryKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final KNOWN_PLUGINS:Ljava/util/Map;

.field public static final TMP_MESSAGE$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 2
    .line 3
    const-string v1, "ANALOG_CLOCK_BIGNUM"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    const-string v2, "com.android.systemui.falcon.one"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 20
    .line 21
    const-string v2, "DIGITAL_CLOCK_CALLIGRAPHY"

    .line 22
    .line 23
    invoke-direct {v0, v2}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Lkotlin/Pair;

    .line 31
    .line 32
    const-string v3, "com.android.systemui.falcon.two"

    .line 33
    .line 34
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 38
    .line 39
    const-string v3, "DIGITAL_CLOCK_FLEX"

    .line 40
    .line 41
    invoke-direct {v0, v3}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v3, Lkotlin/Pair;

    .line 49
    .line 50
    const-string v4, "com.android.systemui.falcon.three"

    .line 51
    .line 52
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 56
    .line 57
    const-string v4, "DIGITAL_CLOCK_GROWTH"

    .line 58
    .line 59
    invoke-direct {v0, v4}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v4, Lkotlin/Pair;

    .line 67
    .line 68
    const-string v5, "com.android.systemui.falcon.four"

    .line 69
    .line 70
    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 74
    .line 75
    const-string v5, "DIGITAL_CLOCK_HANDWRITTEN"

    .line 76
    .line 77
    invoke-direct {v0, v5}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v5, Lkotlin/Pair;

    .line 85
    .line 86
    const-string v6, "com.android.systemui.falcon.five"

    .line 87
    .line 88
    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 92
    .line 93
    const-string v6, "DIGITAL_CLOCK_INFLATE"

    .line 94
    .line 95
    invoke-direct {v0, v6}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v6, Lkotlin/Pair;

    .line 103
    .line 104
    const-string v7, "com.android.systemui.falcon.six"

    .line 105
    .line 106
    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 110
    .line 111
    const-string v7, "DIGITAL_CLOCK_NUMBEROVERLAP"

    .line 112
    .line 113
    invoke-direct {v0, v7}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v7, Lkotlin/Pair;

    .line 121
    .line 122
    const-string v8, "com.android.systemui.falcon.eight"

    .line 123
    .line 124
    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 128
    .line 129
    const-string v8, "DIGITAL_CLOCK_WEATHER"

    .line 130
    .line 131
    invoke-direct {v0, v8}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v8, Lkotlin/Pair;

    .line 139
    .line 140
    const-string v9, "com.android.systemui.falcon.nine"

    .line 141
    .line 142
    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    filled-new-array/range {v1 .. v8}, [Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    .line 154
    .line 155
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt$TMP_MESSAGE$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistryKt$TMP_MESSAGE$2;

    .line 156
    .line 157
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->TMP_MESSAGE$delegate:Lkotlin/Lazy;

    .line 162
    .line 163
    return-void
.end method

.method public static final access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->TMP_MESSAGE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/log/LogMessage;

    .line 8
    .line 9
    return-object v0
.end method
