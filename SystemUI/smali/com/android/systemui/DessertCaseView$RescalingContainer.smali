.class public final Lcom/android/systemui/DessertCaseView$RescalingContainer;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x1606

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    sub-int/2addr p4, p2

    .line 2
    int-to-float p1, p4

    .line 3
    sub-int/2addr p5, p3

    .line 4
    int-to-float p4, p5

    .line 5
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    .line 6
    .line 7
    const/high16 p5, 0x3e800000    # 0.25f

    .line 8
    .line 9
    div-float v0, p1, p5

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    div-float p5, p4, p5

    .line 16
    .line 17
    div-float/2addr p5, v1

    .line 18
    float-to-int p5, p5

    .line 19
    int-to-float p2, p2

    .line 20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    mul-float/2addr p1, v1

    .line 23
    add-float/2addr p1, p2

    .line 24
    float-to-int p1, p1

    .line 25
    int-to-float p2, p3

    .line 26
    mul-float/2addr p4, v1

    .line 27
    add-float/2addr p4, p2

    .line 28
    float-to-int p2, p4

    .line 29
    sub-int p3, p1, v0

    .line 30
    .line 31
    sub-int p4, p2, p5

    .line 32
    .line 33
    add-int/2addr p1, v0

    .line 34
    add-int/2addr p2, p5

    .line 35
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
