.class public Lcom/android/systemui/monet/scheme/DynamicScheme;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final contrastLevel:D

.field public final errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

.field public final isDark:Z

.field public final neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

.field public final neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

.field public final primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

.field public final secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

.field public final sourceColorHct:Lcom/android/systemui/monet/hct/Hct;

.field public final tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

.field public final variant:Lcom/android/systemui/monet/scheme/Variant;


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/Variant;ZDLcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;Lcom/android/systemui/monet/palettes/TonalPalette;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->sourceColorHct:Lcom/android/systemui/monet/hct/Hct;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->contrastLevel:D

    .line 14
    .line 15
    iput-object p6, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 24
    .line 25
    const-wide/high16 p1, 0x4039000000000000L    # 25.0

    .line 26
    .line 27
    const-wide/high16 p3, 0x4055000000000000L    # 84.0

    .line 28
    .line 29
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/monet/palettes/TonalPalette;->fromHueAndChroma(DD)Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 34
    .line 35
    return-void
.end method

.method public static getRotatedHue(Lcom/android/systemui/monet/hct/Hct;[D[D)D
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 2
    .line 3
    array-length p0, p2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne p0, v2, :cond_0

    .line 7
    .line 8
    aget-wide p0, p2, v3

    .line 9
    .line 10
    add-double/2addr v0, p0

    .line 11
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0

    .line 16
    :cond_0
    array-length p0, p1

    .line 17
    :goto_0
    add-int/lit8 v2, p0, -0x2

    .line 18
    .line 19
    if-gt v3, v2, :cond_2

    .line 20
    .line 21
    aget-wide v4, p1, v3

    .line 22
    .line 23
    add-int/lit8 v2, v3, 0x1

    .line 24
    .line 25
    aget-wide v6, p1, v2

    .line 26
    .line 27
    cmpg-double v4, v4, v0

    .line 28
    .line 29
    if-gez v4, :cond_1

    .line 30
    .line 31
    cmpg-double v4, v0, v6

    .line 32
    .line 33
    if-gez v4, :cond_1

    .line 34
    .line 35
    aget-wide p0, p2, v3

    .line 36
    .line 37
    add-double/2addr v0, p0

    .line 38
    invoke-static {v0, v1}, Lcom/android/systemui/monet/utils/MathUtils;->sanitizeDegreesDouble(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    return-wide p0

    .line 43
    :cond_1
    move v3, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-wide v0
.end method
