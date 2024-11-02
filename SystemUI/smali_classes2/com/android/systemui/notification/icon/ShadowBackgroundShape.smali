.class public final Lcom/android/systemui/notification/icon/ShadowBackgroundShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final ctx:Landroid/content/Context;

.field public final matrix:Landroid/graphics/Matrix;

.field public final shadow:Landroid/graphics/drawable/Drawable;

.field public final shadowRadius:F

.field public final source:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->matrix:Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->ctx:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->source:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 16
    .line 17
    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 18
    .line 19
    filled-new-array {p4, p4}, [I

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-direct {p1, p2, p4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->shadow:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iput p3, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->shadowRadius:F

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->matrix:Landroid/graphics/Matrix;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResize(FF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->source:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->source:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->source:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->shadow:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/graphics/RectF;

    .line 25
    .line 26
    int-to-float v3, v0

    .line 27
    int-to-float v4, v1

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Landroid/graphics/RectF;

    .line 33
    .line 34
    invoke-direct {v3, v5, v5, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->matrix:Landroid/graphics/Matrix;

    .line 38
    .line 39
    sget-object p2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 40
    .line 41
    invoke-virtual {p1, v2, v3, p2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 50
    .line 51
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    invoke-direct {p2, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 57
    .line 58
    .line 59
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->bitmap:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    new-instance p2, Landroid/graphics/Canvas;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->bitmap:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->shadow:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    const/16 v1, 0x1f

    .line 81
    .line 82
    invoke-virtual {p2, v0, p1, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->source:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->bitmap:Landroid/graphics/Bitmap;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->ctx:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 126
    .line 127
    const/4 v3, 0x2

    .line 128
    invoke-static {v0, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v0, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget v3, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->shadowRadius:F

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 151
    .line 152
    .line 153
    iput-object p2, p0, Lcom/android/systemui/notification/icon/ShadowBackgroundShape;->bitmap:Landroid/graphics/Bitmap;

    .line 154
    .line 155
    return-void
.end method
