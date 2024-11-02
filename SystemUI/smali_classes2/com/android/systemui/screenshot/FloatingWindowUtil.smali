.class public final Lcom/android/systemui/screenshot/FloatingWindowUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/util/DisplayMetrics;F)F
    .locals 0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    mul-float/2addr p1, p0

    .line 5
    const/high16 p0, 0x43200000    # 160.0f

    .line 6
    .line 7
    div-float/2addr p1, p0

    .line 8
    return p1
.end method

.method public static getFloatingWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 1
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x7f4

    .line 8
    .line 9
    const v6, 0xe0520

    .line 10
    .line 11
    .line 12
    const/4 v7, -0x3

    .line 13
    move-object v0, v8

    .line 14
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 22
    .line 23
    .line 24
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 25
    .line 26
    const/high16 v1, 0x20000000

    .line 27
    .line 28
    or-int/2addr v0, v1

    .line 29
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 30
    .line 31
    return-object v8
.end method
