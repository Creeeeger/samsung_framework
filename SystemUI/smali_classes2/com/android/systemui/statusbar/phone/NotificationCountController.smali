.class public final Lcom/android/systemui/statusbar/phone/NotificationCountController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCountIcon:Landroid/widget/TextView;

.field public mCountIconSize:I

.field public mCountTextSize:I

.field public mDarkIntensity:F

.field public mDarkModeIconColorSingleTone:I

.field public mEntries:Ljava/util/List;

.field public final mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public mLightModeIconColorSingleTone:I

.field public final mTintAreas:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintAreas:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mEntries:Ljava/util/List;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final applyNotificationCountTint()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintAreas:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v0, v2

    .line 25
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkIntensity:F

    .line 26
    .line 27
    sget-object v4, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 28
    .line 29
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mLightModeIconColorSingleTone:I

    .line 30
    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkModeIconColorSingleTone:I

    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v4, v3, v5, v6}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkModeIconColorSingleTone:I

    .line 52
    .line 53
    sub-int/2addr v4, v3

    .line 54
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mLightModeIconColorSingleTone:I

    .line 55
    .line 56
    sub-int/2addr v3, v5

    .line 57
    if-le v4, v3, :cond_2

    .line 58
    .line 59
    move v3, v1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v3, v2

    .line 62
    :goto_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move v1, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-nez v3, :cond_4

    .line 67
    .line 68
    move v1, v2

    .line 69
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const v2, 0x7f06044a

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    const v2, 0x7f06044b

    .line 78
    .line 79
    .line 80
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    const v0, 0x7f080cc9

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_6
    const v0, 0x7f080cca

    .line 98
    .line 99
    .line 100
    :goto_5
    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintAreas:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkIntensity:F

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->applyNotificationCountTint()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final updateNotificationCountLayoutParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountTextSize:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x3

    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    .line 24
    .line 25
    div-int/lit8 v1, v0, 0x2

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    .line 30
    .line 31
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    .line 33
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x10

    .line 39
    .line 40
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const v2, 0x7f0709d0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
