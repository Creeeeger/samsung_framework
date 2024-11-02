.class public abstract Lcom/android/systemui/edgelighting/effect/view/AbsToastView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isAnimating:Ljava/lang/Boolean;

.field public mIsHiding:Z

.field public mMaxWidth:I

.field public mMinWidth:I

.field public mScreenWidth:I

.field public mToastFullColor:Z

.field public mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

.field public mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const/16 p1, 0x5f

    .line 5
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    .line 6
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const/16 p1, 0x5f

    .line 11
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    .line 12
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mToastFullColor:Z

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const/16 p1, 0x5f

    .line 17
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    .line 18
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMaxWidth:I

    return-void
.end method
