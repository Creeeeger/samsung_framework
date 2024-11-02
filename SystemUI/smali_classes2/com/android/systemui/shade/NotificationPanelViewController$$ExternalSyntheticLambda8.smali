.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    or-int/2addr p1, v0

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget v0, p1, Landroid/graphics/Insets;->top:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    .line 22
    .line 23
    iget v0, p1, Landroid/graphics/Insets;->right:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayRightInset:I

    .line 26
    .line 27
    iget p1, p1, Landroid/graphics/Insets;->left:I

    .line 28
    .line 29
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayLeftInset:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 32
    .line 33
    iput p1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayLeftInset:I

    .line 34
    .line 35
    iput v0, v1, Lcom/android/systemui/shade/QuickSettingsController;->mDisplayRightInset:I

    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavBarKeyboardButtonShowing:Z

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const v2, 0x1050255

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 60
    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    :goto_0
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 89
    .line 90
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 91
    .line 92
    sub-int v2, p1, v2

    .line 93
    .line 94
    int-to-float v2, v2

    .line 95
    iput v2, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 96
    .line 97
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    .line 98
    .line 99
    iput p1, v2, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 102
    .line 103
    .line 104
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 111
    .line 112
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    iput v3, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mCutoutHeight:I

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iput v3, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mCutoutHeightLandscape:I

    .line 131
    .line 132
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 137
    .line 138
    iget v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iput v2, p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mNavBarHeight:I

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_3
    iput v2, p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mNavBarHeightLandscape:I

    .line 157
    .line 158
    :goto_2
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayTopInset:I

    .line 159
    .line 160
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 161
    .line 162
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 163
    .line 164
    iget-object v2, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->qsSupplier:Ljava/util/function/Supplier;

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    instance-of v3, v2, Lcom/android/systemui/qs/QSFragment;

    .line 171
    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    check-cast v2, Lcom/android/systemui/qs/QSFragment;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    const/4 v2, 0x0

    .line 178
    :goto_3
    if-nez v2, :cond_5

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    iget-object v2, v2, Lcom/android/systemui/qs/QSFragment;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 182
    .line 183
    if-nez v2, :cond_6

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    iget v3, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->lastDisplayTopInset:I

    .line 187
    .line 188
    if-ne p1, v3, :cond_7

    .line 189
    .line 190
    iget v3, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->lastNavigationBarBottomHeight:I

    .line 191
    .line 192
    if-ne v0, v3, :cond_7

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_7
    iput p1, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->lastDisplayTopInset:I

    .line 196
    .line 197
    iput v0, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->lastNavigationBarBottomHeight:I

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->updateResources()V

    .line 200
    .line 201
    .line 202
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsQSContainerController:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateConstraints()V

    .line 205
    .line 206
    .line 207
    sget-boolean p1, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    .line 208
    .line 209
    if-eqz p1, :cond_8

    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    .line 212
    .line 213
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 218
    .line 219
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 220
    .line 221
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateNavBarHeight(I)V

    .line 222
    .line 223
    .line 224
    :cond_8
    return-object p2
.end method
