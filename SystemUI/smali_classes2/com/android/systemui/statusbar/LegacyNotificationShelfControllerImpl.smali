.class public final Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShelfController;


# instance fields
.field public final mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

.field public mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

.field public final mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mView:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 13
    .line 14
    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    .line 15
    .line 16
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/NotificationShelf;->mSensitiveRevealAnimEndabled:Z

    .line 21
    .line 22
    new-instance p1, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mOnAttachStateChangeListener:Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl$1;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfRefactorFlagEnabled:Z

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    iput-object p1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 8
    .line 9
    iput-object p2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 10
    .line 11
    new-instance v1, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 17
    .line 18
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelfController;->assertRefactorFlagDisabled()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnNotificationRemovedListener:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 28
    .line 29
    iput-object p2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 32
    .line 33
    const v1, 0x7f0a075c

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    iput-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const v1, 0x7f0a075d

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingIcon:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v1, 0x7f0a075b

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 63
    .line 64
    iput-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 65
    .line 66
    const v1, 0x7f0a0264

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    .line 76
    .line 77
    const v1, 0x7f0a0774

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    iput-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    const v1, 0x7f0a0297

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 96
    .line 97
    iput-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateTextColor()V

    .line 100
    .line 101
    .line 102
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 103
    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    const v1, 0x7f0700d0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    const v1, 0x7f0700cf

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingText:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 114
    .line 115
    const v3, 0x3f4ccccd    # 0.8f

    .line 116
    .line 117
    .line 118
    const v4, 0x3fa66666    # 1.3f

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfButtonBackground()V

    .line 130
    .line 131
    .line 132
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 133
    .line 134
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfHeight()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfTextAreaVisibility()V

    .line 144
    .line 145
    .line 146
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Landroid/widget/TextView;

    .line 147
    .line 148
    const/4 v2, 0x4

    .line 149
    if-nez v1, :cond_1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotiSettingContainer:Landroid/widget/LinearLayout;

    .line 156
    .line 157
    if-nez v1, :cond_2

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    :goto_2
    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    .line 164
    .line 165
    if-eqz p2, :cond_3

    .line 166
    .line 167
    new-instance v1, Lcom/android/systemui/statusbar/NotificationShelfManager$shelf$1$1;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/NotificationShelfManager$shelf$1$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 183
    .line 184
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 186
    .line 187
    return-void

    .line 188
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/NotificationShelfController;->Companion:Lcom/android/systemui/statusbar/NotificationShelfController$Companion;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 194
    .line 195
    const-string p1, "Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is "

    .line 196
    .line 197
    const-string p2, "enabled"

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method public final canModifyColorOfNotifications()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getView()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setOnClickListener(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$bindController$1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/LegacyNotificationShelfControllerImpl;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
