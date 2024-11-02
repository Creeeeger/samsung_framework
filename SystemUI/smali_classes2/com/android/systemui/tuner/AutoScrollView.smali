.class public Lcom/android/systemui/tuner/AutoScrollView;
.super Landroid/widget/ScrollView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v1, v0

    .line 20
    const v3, 0x3dcccccd    # 0.1f

    .line 21
    .line 22
    .line 23
    mul-float/2addr v1, v3

    .line 24
    float-to-int v1, v1

    .line 25
    if-ge p1, v1, :cond_1

    .line 26
    .line 27
    sub-int/2addr p1, v1

    .line 28
    invoke-virtual {p0, v2, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sub-int v3, v0, v1

    .line 33
    .line 34
    if-le p1, v3, :cond_2

    .line 35
    .line 36
    sub-int/2addr p1, v0

    .line 37
    add-int/2addr p1, v1

    .line 38
    invoke-virtual {p0, v2, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return v2
.end method
