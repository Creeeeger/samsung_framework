.class public final Landroidx/leanback/transition/FadeAndShortSlide$3;
.super Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getGoneX(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    aget v0, p4, p0

    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    div-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/transition/Visibility;->getEpicenter()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    aget p0, p4, p0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    div-int/lit8 p4, p4, 0x2

    .line 27
    .line 28
    add-int/2addr p4, p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    :goto_0
    if-ge v1, p4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sub-float/2addr p0, p1

    .line 45
    return p0

    .line 46
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    add-float/2addr p1, p0

    .line 55
    return p1
.end method
