.class public final Lcom/android/systemui/monet/scheme/SchemeMonochrome;
.super Lcom/android/systemui/monet/scheme/DynamicScheme;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;ZD)V
    .locals 11

    .line 1
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 12
    .line 13
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 18
    .line 19
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 24
    .line 25
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-wide v0, p1, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 30
    .line 31
    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    move-object v0, p0

    .line 36
    move-object v1, p1

    .line 37
    move v3, p2

    .line 38
    move-wide v4, p3

    .line 39
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/monet/scheme/DynamicScheme;-><init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
