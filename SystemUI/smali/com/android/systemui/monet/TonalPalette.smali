.class public final Lcom/android/systemui/monet/TonalPalette;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SHADE_KEYS:Ljava/util/List;


# instance fields
.field public final allShades:Ljava/util/List;

.field public final allShadesMapped:Ljava/util/Map;

.field public final seedCam:Lcom/android/internal/graphics/cam/Cam;

.field public final spec:Lcom/android/systemui/monet/TonalSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/systemui/monet/TonalPalette$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/TonalPalette$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v0, 0x32

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v0, 0x64

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v0, 0xc8

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/16 v0, 0x12c

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/16 v0, 0x190

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/16 v0, 0x1f4

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/16 v0, 0x258

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const/16 v0, 0x2bc

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const/16 v0, 0x320

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    const/16 v0, 0x384

    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    const/16 v0, 0x3e8

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    filled-new-array/range {v1 .. v12}, [Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/android/systemui/monet/TonalPalette;->SHADE_KEYS:Ljava/util/List;

    .line 88
    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/monet/TonalSpec;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/monet/TonalPalette;->spec:Lcom/android/systemui/monet/TonalSpec;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/monet/TonalPalette;->seedCam:Lcom/android/internal/graphics/cam/Cam;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/systemui/monet/TonalSpec;->hue:Lcom/android/systemui/monet/Hue;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lcom/android/systemui/monet/Hue;->get(Lcom/android/internal/graphics/cam/Cam;)D

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object p1, p1, Lcom/android/systemui/monet/TonalSpec;->chroma:Lcom/android/systemui/monet/Chroma;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/android/systemui/monet/Chroma;->get(Lcom/android/internal/graphics/cam/Cam;)D

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    double-to-float p1, v1

    .line 25
    double-to-float v0, v3

    .line 26
    const/16 v1, 0xc

    .line 27
    .line 28
    new-array v2, v1, [I

    .line 29
    .line 30
    const/high16 v3, 0x42200000    # 40.0f

    .line 31
    .line 32
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/high16 v5, 0x42c60000    # 99.0f

    .line 37
    .line 38
    invoke-static {p1, v4, v5}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x0

    .line 43
    aput v4, v2, v5

    .line 44
    .line 45
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/high16 v4, 0x42be0000    # 95.0f

    .line 50
    .line 51
    invoke-static {p1, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    aput v3, v2, v4

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    :goto_0
    if-ge v3, v1, :cond_1

    .line 60
    .line 61
    const/4 v4, 0x6

    .line 62
    if-ne v3, v4, :cond_0

    .line 63
    .line 64
    const v4, 0x42466666    # 49.6f

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v4, v3, -0x1

    .line 69
    .line 70
    mul-int/lit8 v4, v4, 0xa

    .line 71
    .line 72
    rsub-int/lit8 v4, v4, 0x64

    .line 73
    .line 74
    int-to-float v4, v4

    .line 75
    :goto_1
    invoke-static {p1, v0, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    aput v4, v2, v3

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    :goto_2
    if-ge v5, v1, :cond_2

    .line 90
    .line 91
    aget v0, v2, v5

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 104
    .line 105
    sget-object v0, Lcom/android/systemui/monet/TonalPalette;->SHADE_KEYS:Ljava/util/List;

    .line 106
    .line 107
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/android/systemui/monet/TonalPalette;->allShadesMapped:Ljava/util/Map;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/systemui/monet/TonalPalette;->spec:Lcom/android/systemui/monet/TonalSpec;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/systemui/monet/TonalSpec;->hue:Lcom/android/systemui/monet/Hue;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/monet/TonalPalette;->seedCam:Lcom/android/internal/graphics/cam/Cam;

    .line 122
    .line 123
    invoke-interface {p1, v0}, Lcom/android/systemui/monet/Hue;->get(Lcom/android/internal/graphics/cam/Cam;)D

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    double-to-float p1, v0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/monet/TonalPalette;->spec:Lcom/android/systemui/monet/TonalSpec;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/systemui/monet/TonalSpec;->chroma:Lcom/android/systemui/monet/Chroma;

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->seedCam:Lcom/android/internal/graphics/cam/Cam;

    .line 133
    .line 134
    invoke-interface {v0, p0}, Lcom/android/systemui/monet/Chroma;->get(Lcom/android/internal/graphics/cam/Cam;)D

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    double-to-float p0, v0

    .line 139
    invoke-static {p2}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromInt(I)F

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-static {p1, p0, p2}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    .line 144
    .line 145
    .line 146
    return-void
.end method


# virtual methods
.method public final getS100()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getS500()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final getS700()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final getS800()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
