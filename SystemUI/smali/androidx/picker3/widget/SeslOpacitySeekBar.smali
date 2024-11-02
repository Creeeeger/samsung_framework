.class Landroidx/picker3/widget/SeslOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mColors:[I

.field public mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    const/high16 p2, -0x1000000

    .line 6
    .line 7
    filled-new-array {p1, p2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final changeColorBase(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput p1, v1, v2

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    new-array v1, v1, [F

    .line 28
    .line 29
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v3, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    aput v4, p1, v3

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    aput v0, p1, v2

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final initColor(I)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/picker3/widget/SeslOpacitySeekBar;->mColors:[I

    .line 21
    .line 22
    const/16 v2, 0xff

    .line 23
    .line 24
    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x1

    .line 29
    aput v0, v1, v2

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
