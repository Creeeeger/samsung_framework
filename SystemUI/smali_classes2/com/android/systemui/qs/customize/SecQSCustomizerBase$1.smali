.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;
.super Landroid/view/View$DragShadowBuilder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic val$pointX:F

.field public final synthetic val$pointY:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;Landroid/view/View;FF)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;->val$pointX:F

    .line 2
    .line 3
    iput p4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;->val$pointY:F

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;->val$pointX:F

    .line 21
    .line 22
    float-to-int p1, p1

    .line 23
    int-to-float v0, v0

    .line 24
    const/high16 v2, 0x3e000000    # 0.125f

    .line 25
    .line 26
    mul-float/2addr v0, v2

    .line 27
    float-to-int v0, v0

    .line 28
    add-int/2addr p1, v0

    .line 29
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$1;->val$pointY:F

    .line 30
    .line 31
    float-to-int p0, p0

    .line 32
    int-to-float v0, v1

    .line 33
    const/high16 v1, 0x3e800000    # 0.25f

    .line 34
    .line 35
    mul-float/2addr v0, v1

    .line 36
    float-to-int v0, v0

    .line 37
    add-int/2addr p0, v0

    .line 38
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
