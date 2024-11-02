.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v0, v5

    .line 30
    :goto_1
    if-nez v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v0, v4

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    :goto_2
    move v0, v5

    .line 53
    :goto_3
    if-eqz v0, :cond_5

    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 56
    .line 57
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    .line 58
    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 61
    .line 62
    iget v2, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    .line 63
    .line 64
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_a

    .line 69
    .line 70
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    .line 76
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_6

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    move v1, v4

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    :goto_4
    move v1, v5

    .line 86
    :goto_5
    if-eqz v1, :cond_8

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_8
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-lez v1, :cond_9

    .line 94
    .line 95
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    .line 96
    .line 97
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_9
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    .line 101
    .line 102
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_a
    :goto_6
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    .line 106
    .line 107
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    .line 108
    .line 109
    :goto_7
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_b

    .line 114
    .line 115
    move v4, v5

    .line 116
    :cond_b
    if-nez v4, :cond_c

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 119
    .line 120
    iput p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    .line 121
    .line 122
    :cond_c
    return-void
.end method
