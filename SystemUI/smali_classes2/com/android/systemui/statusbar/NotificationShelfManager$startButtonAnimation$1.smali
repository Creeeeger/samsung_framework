.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $show:Z

.field public final synthetic $target:Landroid/view/View;

.field public final synthetic $targetAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$show:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$target:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$targetAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$show:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$target:Landroid/view/View;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$target:Landroid/view/View;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$targetAlpha:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 14
    .line 15
    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$target:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const v0, 0x7f0a075c

    .line 27
    .line 28
    .line 29
    if-ne p1, v0, :cond_8

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$show:Z

    .line 32
    .line 33
    if-eqz p1, :cond_8

    .line 34
    .line 35
    const-class p1, Lcom/android/systemui/ShelfToolTipManager;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/systemui/ShelfToolTipManager;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 44
    .line 45
    if-nez v0, :cond_8

    .line 46
    .line 47
    iget-boolean v0, p1, Lcom/android/systemui/ShelfToolTipManager;->alreadyToolTipShown:Z

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-boolean v0, p1, Lcom/android/systemui/ShelfToolTipManager;->isTappedNotiSettings:Z

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-boolean v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mIsQsExpanded:Z

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-boolean v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mJustBeginToOpen:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget v0, p1, Lcom/android/systemui/ShelfToolTipManager;->panelExpandedCount:I

    .line 66
    .line 67
    iget v3, p1, Lcom/android/systemui/ShelfToolTipManager;->THRESHOLD_COUNT:I

    .line 68
    .line 69
    if-ne v0, v3, :cond_1

    .line 70
    .line 71
    move v0, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v0, v1

    .line 74
    :goto_0
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/ShelfToolTipManager;->hasBottomClippedNotiRow()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    move v0, v2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v0, v1

    .line 85
    :goto_1
    if-eqz v0, :cond_8

    .line 86
    .line 87
    iget-object v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    new-instance v3, Lcom/samsung/android/widget/SemTipPopup;

    .line 92
    .line 93
    invoke-direct {v3, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const/4 v3, 0x0

    .line 98
    :goto_2
    iput-object v3, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    iget-object v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    const v4, 0x7f130c0a

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-object v0, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 129
    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    new-instance v1, Lcom/android/systemui/ShelfToolTipManager$tryToShowToolTip$2;

    .line 133
    .line 134
    invoke-direct {v1, p1}, Lcom/android/systemui/ShelfToolTipManager$tryToShowToolTip$2;-><init>(Lcom/android/systemui/ShelfToolTipManager;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/ShelfToolTipManager;->calculatePosition()V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    .line 148
    .line 149
    .line 150
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$target:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const v0, 0x7f0a0264

    .line 157
    .line 158
    .line 159
    if-ne p1, v0, :cond_9

    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 162
    .line 163
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1;->$show:Z

    .line 164
    .line 165
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/NotificationShelfManager;->isAnimationEndedAndVisible:Z

    .line 166
    .line 167
    :cond_9
    return-void
.end method
