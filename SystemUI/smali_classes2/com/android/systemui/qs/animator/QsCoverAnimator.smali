.class public final Lcom/android/systemui/qs/animator/QsCoverAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mPanelViewAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelViewTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mQSPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qp/SubscreenQsPanelController;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getSubRoomQuickPanel()Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mQSPanel:Landroid/view/View;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 16
    .line 17
    invoke-direct {p2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v1, v0, [F

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "translationY"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 37
    .line 38
    new-instance p2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 39
    .line 40
    invoke-direct {p2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    new-array v0, v0, [F

    .line 44
    .line 45
    fill-array-data v0, :array_1

    .line 46
    .line 47
    .line 48
    const-string v1, "alpha"

    .line 49
    .line 50
    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 51
    .line 52
    .line 53
    const p1, 0x3eb33333    # 0.35f

    .line 54
    .line 55
    .line 56
    iput p1, p2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :array_0
    .array-data 4
        -0x3bcc0000    # -720.0f
        0x0
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
