.class public final Lcom/android/systemui/monet/palettes/TonalPalette;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final chroma:D

.field public final hue:D

.field public final keyColor:Lcom/android/systemui/monet/hct/Hct;


# direct methods
.method private constructor <init>(DDLcom/android/systemui/monet/hct/Hct;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 12
    .line 13
    iput-object p5, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 14
    .line 15
    return-void
.end method

.method public static fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;
    .locals 16

    .line 1
    new-instance v6, Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 2
    .line 3
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    .line 4
    .line 5
    move-wide/from16 v0, p0

    .line 6
    .line 7
    move-wide/from16 v2, p2

    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 14
    .line 15
    sub-double v1, v1, p2

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    move-object v11, v0

    .line 24
    move-wide v9, v1

    .line 25
    move-wide v12, v7

    .line 26
    :goto_0
    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    .line 27
    .line 28
    cmpg-double v0, v12, v14

    .line 29
    .line 30
    if-gez v0, :cond_3

    .line 31
    .line 32
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->round(D)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v2, v11, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-double v4, v12, v14

    .line 48
    .line 49
    move-wide/from16 v0, p0

    .line 50
    .line 51
    move-wide/from16 v2, p2

    .line 52
    .line 53
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 58
    .line 59
    sub-double v1, v1, p2

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    cmpg-double v3, v1, v9

    .line 66
    .line 67
    if-gez v3, :cond_1

    .line 68
    .line 69
    move-object v11, v0

    .line 70
    move-wide v9, v1

    .line 71
    :cond_1
    sub-double v4, v14, v12

    .line 72
    .line 73
    move-wide/from16 v0, p0

    .line 74
    .line 75
    move-wide/from16 v2, p2

    .line 76
    .line 77
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 82
    .line 83
    sub-double v1, v1, p2

    .line 84
    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    cmpg-double v3, v1, v9

    .line 90
    .line 91
    if-gez v3, :cond_2

    .line 92
    .line 93
    move-object v11, v0

    .line 94
    move-wide v9, v1

    .line 95
    :cond_2
    add-double/2addr v12, v7

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    :goto_1
    move-object v0, v6

    .line 98
    move-wide/from16 v1, p0

    .line 99
    .line 100
    move-wide/from16 v3, p2

    .line 101
    .line 102
    move-object v5, v11

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/monet/palettes/TonalPalette;-><init>(DDLcom/android/systemui/monet/hct/Hct;)V

    .line 104
    .line 105
    .line 106
    return-object v6
.end method
