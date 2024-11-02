.class public final Lcom/android/systemui/edgelighting/effect/utils/OneSpring;
.super Landroid/view/animation/PathInterpolator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const v2, 0x3e6147ae    # 0.22f

    .line 5
    .line 6
    .line 7
    const/high16 v3, 0x3e800000    # 0.25f

    .line 8
    .line 9
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
