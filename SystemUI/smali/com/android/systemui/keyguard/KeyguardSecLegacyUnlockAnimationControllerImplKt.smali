.class public abstract Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

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
    const v3, 0x3dcccccd    # 0.1f

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
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 16
    .line 17
    const v3, 0x3f2b851f    # 0.67f

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 26
    .line 27
    const v2, 0x3f666666    # 0.9f

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->CUSTOM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 34
    .line 35
    return-void
.end method
