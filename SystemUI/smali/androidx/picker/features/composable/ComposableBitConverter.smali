.class public final Landroidx/picker/features/composable/ComposableBitConverter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final cachedMapByComposableType:Ljava/util/Map;

.field public final cachedMapByViewType:Ljava/util/Map;

.field public final frameInfo:[Ljava/util/List;

.field public final frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

.field public final maxBit:I

.field public final rangeList:[Lkotlin/ranges/IntRange;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/picker/features/composable/ComposableBitConverter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/picker/features/composable/ComposableBitConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroidx/picker/features/composable/ComposableStrategy;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array v0, p1, [Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    const/4 v3, 0x1

    .line 12
    if-ge v2, p1, :cond_4

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-eq v2, v3, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 25
    .line 26
    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getWidgetFrameList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string p1, "UnReachable"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 40
    .line 41
    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getTitleFrameList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 47
    .line 48
    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getIconFrameList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object v3, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameStrategy:Landroidx/picker/features/composable/ComposableStrategy;

    .line 54
    .line 55
    invoke-interface {v3}, Landroidx/picker/features/composable/ComposableStrategy;->getLeftFrameList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_1
    aput-object v3, v0, v2

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iput-object v0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameInfo:[Ljava/util/List;

    .line 65
    .line 66
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByViewType:Ljava/util/Map;

    .line 72
    .line 73
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->cachedMapByComposableType:Ljava/util/Map;

    .line 79
    .line 80
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    array-length v2, v0

    .line 83
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    array-length v2, v0

    .line 87
    move v4, v1

    .line 88
    move v5, v4

    .line 89
    :goto_2
    if-ge v4, v2, :cond_5

    .line 90
    .line 91
    aget-object v6, v0, v4

    .line 92
    .line 93
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    int-to-double v6, v6

    .line 98
    int-to-double v8, v3

    .line 99
    add-double/2addr v6, v8

    .line 100
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    sget-wide v8, Lkotlin/math/Constants;->LN2:D

    .line 105
    .line 106
    div-double/2addr v6, v8

    .line 107
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    double-to-int v6, v6

    .line 112
    add-int/2addr v6, v5

    .line 113
    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    move v5, v6

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    new-array v0, v1, [Lkotlin/ranges/IntRange;

    .line 125
    .line 126
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, [Lkotlin/ranges/IntRange;

    .line 131
    .line 132
    iput-object p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->rangeList:[Lkotlin/ranges/IntRange;

    .line 133
    .line 134
    shl-int p1, v3, v5

    .line 135
    .line 136
    sub-int/2addr p1, v3

    .line 137
    iput p1, p0, Landroidx/picker/features/composable/ComposableBitConverter;->maxBit:I

    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public final decodeAsFrame(II)Landroidx/picker/features/composable/ComposableFrame;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->rangeList:[Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    iget v1, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    shl-int v1, v2, v1

    .line 10
    .line 11
    iget v0, v0, Lkotlin/ranges/IntProgression;->first:I

    .line 12
    .line 13
    shl-int v3, v2, v0

    .line 14
    .line 15
    sub-int/2addr v1, v3

    .line 16
    and-int/2addr p2, v1

    .line 17
    shr-int/2addr p2, v0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Landroidx/picker/features/composable/ComposableBitConverter;->frameInfo:[Ljava/util/List;

    .line 23
    .line 24
    aget-object p0, p0, p1

    .line 25
    .line 26
    sub-int/2addr p2, v2

    .line 27
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/picker/features/composable/ComposableFrame;

    .line 32
    .line 33
    return-object p0
.end method
