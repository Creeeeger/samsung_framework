.class public final Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isTapAnimationRunning:Z

.field public final restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

.field public final restoreSpringAnimationList:Ljava/util/List;

.field public final tapAffordanceViews:Ljava/util/List;

.field public final tapSpringAnimationList:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x6

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapAffordanceViews:Ljava/util/List;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    .line 28
    .line 29
    new-instance p1, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;-><init>(Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    .line 35
    .line 36
    return-void
.end method
