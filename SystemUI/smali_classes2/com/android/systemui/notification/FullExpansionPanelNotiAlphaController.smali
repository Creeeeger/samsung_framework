.class public final Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field public final mSineInOut33:Landroid/view/animation/Interpolator;

.field public mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mStackScrollerOverscrolling:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 5
    .line 6
    const v1, 0x3f2b851f    # 0.67f

    .line 7
    .line 8
    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const v3, 0x3ea8f5c3    # 0.33f

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 23
    .line 24
    return-void
.end method
