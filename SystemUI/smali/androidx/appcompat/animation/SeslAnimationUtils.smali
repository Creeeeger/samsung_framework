.class public final Landroidx/appcompat/animation/SeslAnimationUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

.field public static final SINE_OUT_80:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3ea8f5c3    # 0.33f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const v3, 0x3e99999a    # 0.3f

    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    const v5, 0x3e4ccccd    # 0.2f

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 26
    .line 27
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 28
    .line 29
    const v6, 0x3dcccccd    # 0.1f

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    .line 36
    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 38
    .line 39
    const v1, 0x3e2e147b    # 0.17f

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v1, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    .line 46
    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 48
    .line 49
    invoke-direct {v0, v1, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroidx/appcompat/animation/SeslElasticInterpolator;

    .line 53
    .line 54
    const v1, 0x3f4ccccd    # 0.8f

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v4, v1}, Landroidx/appcompat/animation/SeslElasticInterpolator;-><init>(FF)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroidx/appcompat/animation/SeslElasticInterpolator;

    .line 61
    .line 62
    const v1, 0x3f333333    # 0.7f

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v4, v1}, Landroidx/appcompat/animation/SeslElasticInterpolator;-><init>(FF)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
