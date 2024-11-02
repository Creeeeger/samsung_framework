.class public final Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/QuickSettingsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda5;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setCollapseExpandAction(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mStackScrollerOverscrolling:Z

    .line 31
    .line 32
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 36
    .line 37
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 38
    .line 39
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setInSplitShade(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mIsFullWidth:Z

    .line 45
    .line 46
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QS;->setIsNotificationPanelFullWidth(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 64
    .line 65
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 66
    .line 67
    iput-object p0, p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    .line 68
    .line 69
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeTransitionController:Lcom/android/systemui/shade/transition/ShadeTransitionController;

    .line 70
    .line 71
    iput-object p0, p1, Lcom/android/systemui/shade/transition/ShadeTransitionController;->qs:Lcom/android/systemui/plugins/qs/QS;

    .line 72
    .line 73
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 82
    .line 83
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsHeader:Landroid/view/ViewGroup;

    .line 84
    .line 85
    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 86
    .line 87
    iget-object p1, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda2;

    .line 88
    .line 89
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansion()V

    .line 93
    .line 94
    .line 95
    iget-object p0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsSupplier:Ljava/util/function/Supplier;

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    instance-of v1, v0, Lcom/android/systemui/qs/QSFragment;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move-object v0, v2

    .line 112
    :goto_0
    if-eqz v0, :cond_b

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/systemui/qs/QSFragment;->mSecQSFragment:Lcom/android/systemui/qs/SecQSFragment;

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->panelViewControllerLazy:Ldagger/Lazy;

    .line 119
    .line 120
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 125
    .line 126
    iget-object v3, v0, Lcom/android/systemui/qs/SecQSFragment;->quickAnimation:Lcom/android/systemui/qs/QuickAnimation;

    .line 127
    .line 128
    iget-object v4, v3, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 129
    .line 130
    if-eqz v4, :cond_1

    .line 131
    .line 132
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object v1, v3, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 136
    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object v1, v3, Lcom/android/systemui/qs/QuickAnimation;->secQSFragmentAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 145
    .line 146
    iget-object v3, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->expandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 147
    .line 148
    if-eqz v1, :cond_3

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setExpandImmediateSupplier(Ljava/util/function/BooleanSupplier;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSFragment;->quickBar:Lcom/android/systemui/qs/QuickBar;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/android/systemui/qs/QuickBar;->barController:Lcom/android/systemui/qs/bar/BarController;

    .line 156
    .line 157
    const-string v4, "SecQuickSettingsController"

    .line 158
    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    iget-object v5, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->mediaTouchHelper:Lcom/android/systemui/shade/SecQsMediaTouchHelper;

    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-object v6, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    .line 167
    .line 168
    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/bar/BarController;->getBarInCollapsed(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    instance-of v6, v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 173
    .line 174
    if-eqz v6, :cond_4

    .line 175
    .line 176
    move-object v2, v1

    .line 177
    check-cast v2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 178
    .line 179
    :cond_4
    iput-object v2, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 180
    .line 181
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_5
    const-string/jumbo v1, "setupMediaTouchHelper: barController is null !!"

    .line 190
    .line 191
    .line 192
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :goto_1
    iput-object v3, v0, Lcom/android/systemui/qs/SecQSFragment;->expandImmediate:Ljava/util/function/BooleanSupplier;

    .line 196
    .line 197
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    .line 202
    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-eqz p1, :cond_7

    .line 210
    .line 211
    const v0, 0x7f0a03de

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 221
    .line 222
    const v0, 0x7f0a0880

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/android/systemui/qs/QSContainerImpl;

    .line 230
    .line 231
    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsContainerImpl:Lcom/android/systemui/qs/QSContainerImpl;

    .line 232
    .line 233
    if-eqz p1, :cond_6

    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 236
    .line 237
    iput-object v0, p1, Lcom/android/systemui/qs/QSContainerImpl;->mMinExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 238
    .line 239
    :cond_6
    if-eqz p1, :cond_7

    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 242
    .line 243
    iput-object v0, p1, Lcom/android/systemui/qs/QSContainerImpl;->mMaxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 244
    .line 245
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->heightAnimatingSupplier:Ljava/util/function/BooleanSupplier;

    .line 246
    .line 247
    if-eqz p1, :cond_8

    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 250
    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    iput-object p1, v0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mHeightAnimatingSupplier:Ljava/util/function/BooleanSupplier;

    .line 254
    .line 255
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->qsContainerImpl:Lcom/android/systemui/qs/QSContainerImpl;

    .line 256
    .line 257
    if-eqz p1, :cond_9

    .line 258
    .line 259
    iput-object v3, p1, Lcom/android/systemui/qs/QSContainerImpl;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 260
    .line 261
    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsController$onFragmentViewCreated$1$3$1;

    .line 262
    .line 263
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/SecQuickSettingsController$onFragmentViewCreated$1$3$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsController;)V

    .line 264
    .line 265
    .line 266
    iput-object v0, p1, Lcom/android/systemui/qs/QSContainerImpl;->mImmersiveScrollingSupplier:Ljava/util/function/BooleanSupplier;

    .line 267
    .line 268
    const v0, 0x7f0a087c

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 276
    .line 277
    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->quickQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 278
    .line 279
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->quickQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 280
    .line 281
    if-eqz p1, :cond_a

    .line 282
    .line 283
    const v0, 0x7f0a0879

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Landroid/widget/LinearLayout;

    .line 291
    .line 292
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsController$modeChangedListener$1;

    .line 293
    .line 294
    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 295
    .line 296
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->naviBarGestureMode:I

    .line 301
    .line 302
    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 303
    .line 304
    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsController;->logProvider:Lcom/android/systemui/shade/SecQuickSettingsController$logProvider$1;

    .line 305
    .line 306
    invoke-virtual {p1, v4, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    .line 307
    .line 308
    .line 309
    :cond_b
    return-void
.end method

.method public final onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->mediaTouchHelper:Lcom/android/systemui/shade/SecQsMediaTouchHelper;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsController$modeChangedListener$1;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/shade/SecQuickSettingsController;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 22
    .line 23
    const-string v1, "SecQuickSettingsController"

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v2, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 33
    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0

    .line 42
    throw p0
.end method
