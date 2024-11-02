.class public final Lcom/android/systemui/monet/scheme/SchemeFruitSalad;
.super Lcom/android/systemui/monet/scheme/DynamicScheme;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;ZD)V
    .locals 11

    .line 1
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->FRUIT_SALAD:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 4
    .line 5
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    .line 6
    .line 7
    sub-double/2addr v0, v3

    .line 8
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    .line 13
    .line 14
    invoke-static {v0, v1, v5, v6}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 19
    .line 20
    sub-double/2addr v0, v3

    .line 21
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/high16 v3, 0x4042000000000000L    # 36.0

    .line 26
    .line 27
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 32
    .line 33
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 38
    .line 39
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 40
    .line 41
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 46
    .line 47
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    .line 48
    .line 49
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    move-object v0, p0

    .line 54
    move-object v1, p1

    .line 55
    move v3, p2

    .line 56
    move-wide v4, p3

    .line 57
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/monet/scheme/DynamicScheme;-><init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
