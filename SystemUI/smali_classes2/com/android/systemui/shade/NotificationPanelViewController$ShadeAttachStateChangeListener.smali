.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "QS"

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 33
    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 44
    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 46
    .line 47
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    .line 57
    .line 58
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda5;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const-string/jumbo v0, "user_switcher_enabled"

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    .line 102
    .line 103
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    .line 105
    .line 106
    sget-boolean p1, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    .line 113
    .line 114
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 121
    .line 122
    const-string v3, "DataUsageLabelManager"

    .line 123
    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-nez v4, :cond_0

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    if-eqz p1, :cond_3

    .line 134
    .line 135
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    .line 136
    .line 137
    if-eqz p1, :cond_1

    .line 138
    .line 139
    const-string p1, "attachDataUsageLabelView(COMMON for DATAUSAGE)"

    .line 140
    .line 141
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 145
    .line 146
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    invoke-direct {p1, v4}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 152
    .line 153
    const/4 v5, -0x1

    .line 154
    const/4 v6, -0x2

    .line 155
    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v4, "attachDataUsageLabelView() - but panel parent view is null"

    .line 174
    .line 175
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Landroid/os/Handler;

    .line 195
    .line 196
    new-instance v4, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda1;

    .line 197
    .line 198
    invoke-direct {v4, v0, v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/os/Handler;

    .line 209
    .line 210
    new-instance v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda1;

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;I)V

    .line 214
    .line 215
    .line 216
    const-wide/16 v4, 0x2710

    .line 217
    .line 218
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    .line 220
    .line 221
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    .line 222
    .line 223
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 224
    .line 225
    if-eqz v1, :cond_4

    .line 226
    .line 227
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->SETTINGS_VALUE_LIST:[Landroid/net/Uri;

    .line 228
    .line 229
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 230
    .line 231
    .line 232
    :cond_4
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    .line 233
    .line 234
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 235
    .line 236
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    .line 237
    .line 238
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 239
    .line 240
    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 241
    .line 242
    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 243
    .line 244
    .line 245
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 246
    .line 247
    iget v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 248
    .line 249
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 250
    .line 251
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 252
    .line 253
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 254
    .line 255
    if-eq v0, p1, :cond_6

    .line 256
    .line 257
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 258
    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string/jumbo v0, "panel mBarState "

    .line 262
    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 268
    .line 269
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v0, "/ StatusBarStateController.getState() "

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 280
    .line 281
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 282
    .line 283
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 284
    .line 285
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 286
    .line 287
    const-string v1, "NotificationPanelView"

    .line 288
    .line 289
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 293
    .line 294
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 295
    .line 296
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 297
    .line 298
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 299
    .line 300
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 301
    .line 302
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    .line 303
    .line 304
    .line 305
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 306
    .line 307
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 308
    .line 309
    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 312
    .line 313
    iget-object v0, p1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

    .line 314
    .line 315
    iget-object v1, v0, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 316
    .line 317
    iget-object v2, v1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 318
    .line 319
    iget-object v1, v1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

    .line 320
    .line 321
    iget-object v0, v0, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    .line 322
    .line 323
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->updateResources()V

    .line 327
    .line 328
    .line 329
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 330
    .line 331
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    .line 332
    .line 333
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    .line 334
    .line 335
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 336
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    .line 338
    .line 339
    .line 340
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    .line 33
    .line 34
    const-string v0, "QS"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 64
    .line 65
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;

    .line 75
    .line 76
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda5;

    .line 86
    .line 87
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V

    .line 88
    .line 89
    .line 90
    sget-boolean p1, Lcom/android/systemui/QpRune;->PANEL_DATA_USAGE_LABEL:Z

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelManagerLazy:Ldagger/Lazy;

    .line 97
    .line 98
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    .line 105
    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    .line 120
    .line 121
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    .line 122
    .line 123
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 133
    .line 134
    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 135
    .line 136
    const-string v0, "DataUsageLabelManager"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 142
    .line 143
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/android/systemui/shade/SecQuickSettingsController;->expandQSAtOnceController:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;->this$0:Lcom/android/systemui/shade/SecExpandQSAtOnceController;

    .line 152
    .line 153
    iget-object v0, p1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeAttachStateChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
