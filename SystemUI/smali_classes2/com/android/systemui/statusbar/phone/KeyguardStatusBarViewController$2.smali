.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onSystemEventAnimationBegin(Z)Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    new-instance p0, Landroidx/core/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final onSystemEventAnimationFinish(ZZ)Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    new-instance p0, Landroidx/core/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
