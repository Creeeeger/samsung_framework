.class public final Lcom/android/systemui/animation/TextInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final basePaint:Landroid/text/TextPaint;

.field public final fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

.field public glyphFilter:Lkotlin/jvm/functions/Function2;

.field public layout:Landroid/text/Layout;

.field public lines:Ljava/util/List;

.field public progress:F

.field public final targetPaint:Landroid/text/TextPaint;

.field public final tmpGlyph$delegate:Lkotlin/Lazy;

.field public final tmpPaint:Landroid/text/TextPaint;

.field public final tmpPaintForGlyph$delegate:Lkotlin/Lazy;

.field public tmpPositionArray:[F

.field public final typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCache;


# direct methods
.method public constructor <init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCache;

    .line 3
    new-instance p2, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    .line 4
    new-instance p2, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 5
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 6
    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 7
    new-instance p2, Lcom/android/systemui/animation/FontInterpolator;

    invoke-direct {p2, p3}, Lcom/android/systemui/animation/FontInterpolator;-><init>(Ljava/lang/Integer;)V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

    .line 8
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    .line 9
    sget-object p2, Lcom/android/systemui/animation/TextInterpolator$tmpPaintForGlyph$2;->INSTANCE:Lcom/android/systemui/animation/TextInterpolator$tmpPaintForGlyph$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaintForGlyph$delegate:Lkotlin/Lazy;

    .line 10
    sget-object p2, Lcom/android/systemui/animation/TextInterpolator$tmpGlyph$2;->INSTANCE:Lcom/android/systemui/animation/TextInterpolator$tmpGlyph$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpGlyph$delegate:Lkotlin/Lazy;

    const/16 p2, 0x14

    new-array p2, p2, [F

    .line 11
    iput-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 12
    iput-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/TextInterpolator;-><init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;)V

    return-void
.end method

.method public static lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;
    .locals 12

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 240
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 241
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    sub-int v3, v10, v9

    add-int v4, v9, v3

    add-int/lit8 v4, v4, -0x1

    if-le v4, v9, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    move v5, v3

    .line 243
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 245
    invoke-virtual {p0}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    .line 246
    new-instance v8, Lcom/android/systemui/animation/TextInterpolator$shapeText$3;

    invoke-direct {v8, v11}, Lcom/android/systemui/animation/TextInterpolator$shapeText$3;-><init>(Ljava/util/List;)V

    move v4, v9

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Landroid/text/TextShaper;->shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V

    .line 247
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final drawFontRun(Landroid/graphics/Canvas;Lcom/android/systemui/animation/TextInterpolator$Run;Lcom/android/systemui/animation/TextInterpolator$FontRun;ILandroid/graphics/Paint;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 8
    .line 9
    iget-object v4, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    .line 10
    .line 11
    iget v5, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/systemui/animation/TextInterpolator;->fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

    .line 14
    .line 15
    invoke-virtual {v6, v3, v4, v5}, Lcom/android/systemui/animation/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->glyphFilter:Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    iget-object v5, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    .line 22
    .line 23
    iget-object v6, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    .line 24
    .line 25
    iget-object v15, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    .line 26
    .line 27
    iget-object v14, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    iget v7, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    .line 32
    .line 33
    iget v13, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->end:I

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    :goto_0
    if-ge v7, v13, :cond_0

    .line 38
    .line 39
    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 40
    .line 41
    add-int/lit8 v8, v16, 0x1

    .line 42
    .line 43
    aget v9, v14, v7

    .line 44
    .line 45
    aget v10, v15, v7

    .line 46
    .line 47
    iget v11, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 48
    .line 49
    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    aput v9, v4, v16

    .line 54
    .line 55
    iget-object v4, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 56
    .line 57
    add-int/lit8 v16, v8, 0x1

    .line 58
    .line 59
    aget v9, v6, v7

    .line 60
    .line 61
    aget v10, v5, v7

    .line 62
    .line 63
    iget v11, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 64
    .line 65
    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    aput v9, v4, v8

    .line 70
    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v8, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 75
    .line 76
    iget v9, v2, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    .line 77
    .line 78
    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 79
    .line 80
    const/4 v11, 0x0

    .line 81
    sub-int v12, v13, v9

    .line 82
    .line 83
    move-object/from16 v7, p1

    .line 84
    .line 85
    move-object v13, v3

    .line 86
    move-object/from16 v14, p5

    .line 87
    .line 88
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move/from16 v8, p4

    .line 118
    .line 119
    iput v8, v2, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->lineNo:I

    .line 120
    .line 121
    iget-object v2, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaintForGlyph$delegate:Lkotlin/Lazy;

    .line 122
    .line 123
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Landroid/text/TextPaint;

    .line 128
    .line 129
    move-object/from16 v12, p5

    .line 130
    .line 131
    invoke-virtual {v8, v12}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    move v9, v7

    .line 135
    move v11, v9

    .line 136
    move/from16 v7, v16

    .line 137
    .line 138
    :goto_1
    if-ge v11, v13, :cond_5

    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    iput v11, v8, Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;->glyphIndex:I

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    iget-object v10, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 151
    .line 152
    aget v10, v10, v11

    .line 153
    .line 154
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    aget v10, v14, v11

    .line 162
    .line 163
    move/from16 p3, v7

    .line 164
    .line 165
    aget v7, v15, v11

    .line 166
    .line 167
    iget v12, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 168
    .line 169
    invoke-static {v10, v7, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    iput v7, v8, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->x:F

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    aget v8, v6, v11

    .line 180
    .line 181
    aget v10, v5, v11

    .line 182
    .line 183
    iget v12, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 184
    .line 185
    invoke-static {v8, v10, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    iput v8, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->y:F

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getTextSize()F

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    iput v8, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->textSize:F

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getColor()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    iput v8, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->color:I

    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    iget v8, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 216
    .line 217
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-interface {v4, v7, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    iget v7, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->textSize:F

    .line 229
    .line 230
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getTextSize()F

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    cmpg-float v7, v7, v8

    .line 235
    .line 236
    if-nez v7, :cond_2

    .line 237
    .line 238
    const/4 v7, 0x1

    .line 239
    goto :goto_2

    .line 240
    :cond_2
    move/from16 v7, v16

    .line 241
    .line 242
    :goto_2
    if-eqz v7, :cond_4

    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    iget v7, v7, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->color:I

    .line 249
    .line 250
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getColor()I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-eq v7, v8, :cond_3

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_3
    move/from16 v7, p3

    .line 258
    .line 259
    move/from16 v19, v11

    .line 260
    .line 261
    move/from16 v17, v13

    .line 262
    .line 263
    move-object/from16 v20, v14

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_4
    :goto_3
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    check-cast v7, Landroid/text/TextPaint;

    .line 271
    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    iget v8, v8, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->textSize:F

    .line 277
    .line 278
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    check-cast v7, Landroid/text/TextPaint;

    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    iget v8, v8, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->color:I

    .line 292
    .line 293
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 294
    .line 295
    .line 296
    iget-object v8, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 297
    .line 298
    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 299
    .line 300
    const/4 v12, 0x0

    .line 301
    sub-int v17, v11, v9

    .line 302
    .line 303
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    move-object/from16 v18, v7

    .line 308
    .line 309
    check-cast v18, Landroid/text/TextPaint;

    .line 310
    .line 311
    move-object/from16 v7, p1

    .line 312
    .line 313
    move/from16 v19, v11

    .line 314
    .line 315
    move v11, v12

    .line 316
    move/from16 v12, v17

    .line 317
    .line 318
    move/from16 v17, v13

    .line 319
    .line 320
    move-object v13, v3

    .line 321
    move-object/from16 v20, v14

    .line 322
    .line 323
    move-object/from16 v14, v18

    .line 324
    .line 325
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    .line 326
    .line 327
    .line 328
    move/from16 v7, v16

    .line 329
    .line 330
    move/from16 v9, v19

    .line 331
    .line 332
    :goto_4
    iget-object v8, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 333
    .line 334
    add-int/lit8 v10, v7, 0x1

    .line 335
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 337
    .line 338
    .line 339
    move-result-object v11

    .line 340
    iget v11, v11, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->x:F

    .line 341
    .line 342
    aput v11, v8, v7

    .line 343
    .line 344
    iget-object v7, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 345
    .line 346
    add-int/lit8 v8, v10, 0x1

    .line 347
    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/TextInterpolator;->getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    iget v11, v11, Lcom/android/systemui/animation/TextAnimator$PositionedGlyph;->y:F

    .line 353
    .line 354
    aput v11, v7, v10

    .line 355
    .line 356
    add-int/lit8 v11, v19, 0x1

    .line 357
    .line 358
    move-object/from16 v12, p5

    .line 359
    .line 360
    move v7, v8

    .line 361
    move/from16 v13, v17

    .line 362
    .line 363
    move-object/from16 v14, v20

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_5
    move/from16 v17, v13

    .line 368
    .line 369
    iget-object v8, v1, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 370
    .line 371
    iget-object v10, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    .line 372
    .line 373
    const/4 v11, 0x0

    .line 374
    sub-int v12, v17, v9

    .line 375
    .line 376
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    move-object v14, v0

    .line 381
    check-cast v14, Landroid/text/TextPaint;

    .line 382
    .line 383
    move-object/from16 v7, p1

    .line 384
    .line 385
    move-object v13, v3

    .line 386
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    .line 387
    .line 388
    .line 389
    return-void
.end method

.method public final getTmpGlyph()Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpGlyph$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/animation/TextInterpolator$MutablePositionedGlyph;

    .line 8
    .line 9
    return-object p0
.end method

.method public final rebase()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v4

    .line 13
    :goto_0
    if-eqz v2, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    cmpg-float v2, v0, v2

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move v3, v4

    .line 24
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-static {v5, v2, v0, v3}, Lcom/android/systemui/animation/TextInterpolator;->lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_7

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Line;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/android/systemui/animation/TextInterpolator$Run;

    .line 77
    .line 78
    iget-object v6, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    .line 79
    .line 80
    array-length v6, v6

    .line 81
    move v7, v4

    .line 82
    :goto_3
    if-ge v7, v6, :cond_6

    .line 83
    .line 84
    iget-object v8, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    .line 85
    .line 86
    aget v9, v8, v7

    .line 87
    .line 88
    iget-object v10, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    .line 89
    .line 90
    aget v10, v10, v7

    .line 91
    .line 92
    iget v11, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 93
    .line 94
    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    aput v9, v8, v7

    .line 99
    .line 100
    iget-object v8, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->baseY:[F

    .line 101
    .line 102
    aget v9, v8, v7

    .line 103
    .line 104
    iget-object v10, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    .line 105
    .line 106
    aget v10, v10, v7

    .line 107
    .line 108
    iget v11, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 109
    .line 110
    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    aput v9, v8, v7

    .line 115
    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    iget-object v3, v3, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_5

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    .line 136
    .line 137
    iget-object v7, v6, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 138
    .line 139
    iget-object v8, v6, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    .line 140
    .line 141
    iget v9, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 142
    .line 143
    iget-object v10, p0, Lcom/android/systemui/animation/TextInterpolator;->fontInterpolator:Lcom/android/systemui/animation/FontInterpolator;

    .line 144
    .line 145
    invoke-virtual {v10, v7, v8, v9}, Lcom/android/systemui/animation/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    iput-object v7, v6, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 150
    .line 151
    invoke-virtual {v7}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v6}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-object v7, p0, Lcom/android/systemui/animation/TextInterpolator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCache;

    .line 160
    .line 161
    check-cast v7, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    .line 162
    .line 163
    invoke-virtual {v7, v6}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->getTypefaceForVariant(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_7
    iput v1, p0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 172
    .line 173
    return-void
.end method

.method public final shapeText(Landroid/text/Layout;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v1

    .line 3
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v5, v1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_16

    .line 4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, v0

    .line 7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    check-cast v7, Ljava/util/List;

    .line 9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 10
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 11
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 13
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/text/PositionedGlyphs;

    check-cast v6, Landroid/graphics/text/PositionedGlyphs;

    .line 14
    invoke-virtual {v6}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v12

    if-ne v8, v12, :cond_1

    const/4 v8, 0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_12

    .line 15
    invoke-virtual {v6}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v8

    .line 16
    new-array v13, v8, [I

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_4

    .line 17
    invoke-virtual {v6, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v14

    .line 18
    invoke-virtual {v7, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v15

    if-ne v14, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_5

    :cond_2
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_3

    .line 19
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 21
    :cond_3
    iget-object v0, v2, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Inconsistent glyph ID at "

    const-string v2, " in line "

    .line 22
    invoke-static {v1, v12, v2, v0}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_4
    new-array v14, v8, [F

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v8, :cond_5

    invoke-virtual {v6, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v12

    aput v12, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 25
    :cond_5
    new-array v15, v8, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v8, :cond_6

    invoke-virtual {v6, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v12

    aput v12, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 26
    :cond_6
    new-array v2, v8, [F

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v8, :cond_7

    invoke-virtual {v7, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v16

    aput v16, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 27
    :cond_7
    new-array v12, v8, [F

    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_9
    if-ge v0, v8, :cond_8

    invoke-virtual {v7, v0}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v16

    aput v16, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 28
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_11

    move/from16 p1, v1

    const/4 v1, 0x0

    move-object/from16 v19, v3

    .line 29
    invoke-virtual {v6, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    .line 30
    invoke-virtual {v7, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 31
    sget-object v16, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v16

    move-object/from16 v20, v4

    const-string v4, ")"

    move-object/from16 v21, v9

    const-string v9, " vs "

    if-eqz v16, :cond_10

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v23, v5

    move-object/from16 v22, v10

    move/from16 v5, v17

    move-object v10, v3

    move/from16 v3, p1

    move/from16 v25, v16

    move-object/from16 v16, v12

    move/from16 v12, v25

    :goto_a
    if-ge v5, v8, :cond_f

    move-object/from16 v24, v11

    .line 32
    invoke-virtual {v6, v5}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v11

    move-object/from16 v17, v6

    .line 33
    invoke-virtual {v7, v5}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v6

    if-eq v10, v11, :cond_c

    if-eq v1, v6, :cond_9

    const/16 v18, 0x1

    goto :goto_b

    :cond_9
    const/16 v18, 0x0

    :goto_b
    if-eqz v18, :cond_b

    move-object/from16 v18, v7

    .line 34
    new-instance v7, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    invoke-direct {v7, v12, v5, v10, v1}, Lcom/android/systemui/animation/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v1, v5, v12

    .line 35
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 36
    sget-object v3, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v6}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    move v12, v5

    move-object v1, v6

    move-object v10, v11

    goto :goto_d

    .line 37
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot interpolate font at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v0, "Base font has changed at "

    const-string v1, " but target font is unchanged."

    .line 39
    invoke-static {v0, v5, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object/from16 v18, v7

    if-ne v1, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_e

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v11, v24

    goto/16 :goto_a

    :cond_e
    const-string v0, "Base font is unchanged at "

    const-string v1, " but target font has changed."

    .line 41
    invoke-static {v0, v5, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object/from16 v24, v11

    .line 43
    new-instance v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    invoke-direct {v4, v12, v8, v10, v1}, Lcom/android/systemui/animation/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v8, v12

    .line 44
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_e

    .line 45
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpolate font at 0 ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move/from16 p1, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v16, v12

    .line 47
    :goto_e
    new-instance v3, Lcom/android/systemui/animation/TextInterpolator$Run;

    move-object/from16 v4, v16

    move-object v12, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/animation/TextInterpolator$Run;-><init>([I[F[F[F[FLjava/util/List;)V

    move-object/from16 v0, v24

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object v11, v0

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v5, v23

    move-object v0, v2

    goto/16 :goto_2

    .line 49
    :cond_12
    iget-object v0, v2, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Inconsistent glyph count at line "

    .line 50
    invoke-static {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move/from16 p1, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object v0, v11

    .line 52
    new-instance v1, Lcom/android/systemui/animation/TextInterpolator$Line;

    invoke-direct {v1, v0}, Lcom/android/systemui/animation/TextInterpolator$Line;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v23

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa

    move/from16 v1, p1

    move-object v5, v0

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_14
    move-object v0, v5

    .line 54
    iput-object v0, v2, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 55
    iget-object v0, v2, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    array-length v0, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_15

    .line 56
    new-array v0, v1, [F

    iput-object v0, v2, Lcom/android/systemui/animation/TextInterpolator;->tmpPositionArray:[F

    :cond_15
    return-void

    .line 57
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
