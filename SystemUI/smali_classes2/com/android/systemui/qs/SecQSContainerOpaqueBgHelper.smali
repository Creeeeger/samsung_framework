.class public final Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;
.super Lcom/android/systemui/util/SecPanelOpaqueBgHelper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBackground:Landroid/view/View;

.field public mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public mBackgroundDrawableColor:I

.field public mBottomRadius:I

.field public final mContext:Landroid/content/Context;

.field public final mUpdateClippingPathRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/util/SecPanelOpaqueBgHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mUpdateClippingPathRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateBackgroundResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f070436

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBottomRadius:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f070c5c

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v2, 0x7f070f03

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    const v1, 0x7f060597

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawableColor:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public final updateBackgroundRound(F[FZ)V
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-class p3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 8
    .line 9
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 14
    .line 15
    invoke-interface {p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-ne p3, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-class p3, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 23
    .line 24
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    .line 29
    .line 30
    invoke-interface {p3}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->getActiveNotificationsCount()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-gtz p3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const p3, 0x3e19999a    # 0.15f

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    const/high16 v3, 0x3f000000    # 0.5f

    .line 46
    .line 47
    sub-float/2addr p1, v3

    .line 48
    div-float/2addr p1, p3

    .line 49
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    iget p2, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawableColor:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget p3, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBottomRadius:I

    .line 86
    .line 87
    int-to-float p3, p3

    .line 88
    mul-float/2addr v0, p3

    .line 89
    const/16 v2, 0x8

    .line 90
    .line 91
    new-array v3, v2, [F

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    aput p3, v3, v4

    .line 95
    .line 96
    aput p3, v3, v1

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    aput p3, v3, v1

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    aput p3, v3, v1

    .line 103
    .line 104
    const/4 p3, 0x4

    .line 105
    aput v0, v3, p3

    .line 106
    .line 107
    const/4 p3, 0x5

    .line 108
    aput v0, v3, p3

    .line 109
    .line 110
    const/4 p3, 0x6

    .line 111
    aput v0, v3, p3

    .line 112
    .line 113
    const/4 p3, 0x7

    .line 114
    aput v0, v3, p3

    .line 115
    .line 116
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 117
    .line 118
    .line 119
    :goto_1
    if-ge v4, v2, :cond_4

    .line 120
    .line 121
    aput v0, p2, v4

    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mUpdateClippingPathRunnable:Ljava/lang/Runnable;

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_2
    return-void
.end method
