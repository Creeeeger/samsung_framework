.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/text/DecimalFormat;

    .line 5
    .line 6
    const-string p1, "#.##"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x1020016

    .line 5
    .line 6
    .line 7
    const v0, 0x7f070b63

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0c8a

    .line 14
    .line 15
    .line 16
    const v1, 0x7f070b64

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0a0c84

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f0a0c87

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0a0c88

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a0c86

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
