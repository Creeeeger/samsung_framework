.class public Lcom/android/systemui/qp/customize/SubscreenCustomizer;
.super Lcom/android/systemui/qs/QSPanel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->mHandler:Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;

    .line 14
    .line 15
    new-instance p1, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/android/systemui/qp/customize/SubscreenCustomizer$2;-><init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "SubscreenCustomizer"

    .line 21
    .line 22
    invoke-static {p0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SubscreenCustomizer"

    .line 5
    .line 6
    const-string v1, "onFinishInflate"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0b1f

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    .line 20
    const v0, 0x7f0a0b1c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    .line 28
    .line 29
    const v0, 0x7f0a0b1e

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    return-void
.end method
