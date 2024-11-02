.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarView;
.super Lcom/android/systemui/navigationbar/NavigationBarView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE:I

.field public backAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public canShowHideKeyboard:Z

.field public currentRemoteView:Landroid/view/View;

.field public final displayId:I

.field public gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

.field public imeVisible:Z

.field public final keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public final marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

.field public notifyHideKeyboard:Z

.field public final pluginNavigationBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

.field public final searcleManager:Lcom/android/systemui/searcle/SearcleManager;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/navigationbar/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iput v2, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 13
    .line 14
    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 23
    .line 24
    new-instance v3, Lcom/android/systemui/basic/util/LogWrapper;

    .line 25
    .line 26
    sget-object v4, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    .line 30
    .line 31
    .line 32
    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    iput-object v4, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 41
    .line 42
    new-instance v4, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 43
    .line 44
    sget-object v5, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v5, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    new-instance v5, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 54
    .line 55
    invoke-direct {v5}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v5, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    .line 59
    .line 60
    :cond_0
    invoke-direct {v4, v5, v2, v1, v3}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 64
    .line 65
    new-instance v5, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    .line 66
    .line 67
    new-instance v6, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

    .line 68
    .line 69
    iget-object v7, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    iget-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 74
    .line 75
    .line 76
    iget-object v7, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-direct {v5, v0, v2, v6, v7}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    iput-object v5, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->pluginNavigationBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    .line 82
    .line 83
    const/high16 v2, 0x20000000

    .line 84
    .line 85
    iput v2, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE:I

    .line 86
    .line 87
    new-instance v2, Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 88
    .line 89
    invoke-direct {v2}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v2, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 93
    .line 94
    const-string/jumbo v2, "window"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Landroid/view/WindowManager;

    .line 102
    .line 103
    new-instance v5, Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 104
    .line 105
    invoke-direct {v5, v1, v2, v3}, Lcom/android/systemui/navigationbar/NavBarTipPopup;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 106
    .line 107
    .line 108
    iput-object v5, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 109
    .line 110
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 111
    .line 112
    iput-object v4, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 113
    .line 114
    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 115
    .line 116
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 117
    .line 118
    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 119
    .line 120
    const v4, 0x7f0a04c2

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 127
    .line 128
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 129
    .line 130
    sget-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 131
    .line 132
    const v6, 0x7f0a002e

    .line 133
    .line 134
    .line 135
    invoke-direct {v2, v6, v3, v5}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 136
    .line 137
    .line 138
    new-instance v3, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 139
    .line 140
    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 141
    .line 142
    const v7, 0x7f0a08e8

    .line 143
    .line 144
    .line 145
    const v8, 0x7f080a98

    .line 146
    .line 147
    .line 148
    invoke-direct {v3, v7, v5, v8}, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;-><init>(ILandroid/content/Context;I)V

    .line 149
    .line 150
    .line 151
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 152
    .line 153
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 160
    .line 161
    iget-object v5, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 162
    .line 163
    check-cast v5, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 166
    .line 167
    .line 168
    if-eqz v3, :cond_1

    .line 169
    .line 170
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 171
    .line 172
    invoke-virtual {v3, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 173
    .line 174
    .line 175
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 176
    .line 177
    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 182
    .line 183
    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 187
    .line 188
    invoke-virtual {v3, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 189
    .line 190
    .line 191
    :goto_0
    new-instance v3, Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 192
    .line 193
    iget-object v10, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 194
    .line 195
    iget v11, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 196
    .line 197
    iget v12, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 198
    .line 199
    const v13, 0x7f080ae0

    .line 200
    .line 201
    .line 202
    const v14, 0x7f080ae1

    .line 203
    .line 204
    .line 205
    const v15, 0x7f080ae2

    .line 206
    .line 207
    .line 208
    const v16, 0x7f080ae3

    .line 209
    .line 210
    .line 211
    new-instance v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarView$initButtonDispatcherGroup$1;

    .line 212
    .line 213
    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView$initButtonDispatcherGroup$1;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarView;)V

    .line 214
    .line 215
    .line 216
    move-object v9, v3

    .line 217
    move-object/from16 v17, v5

    .line 218
    .line 219
    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/shared/rotation/RotationButtonController;-><init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V

    .line 220
    .line 221
    .line 222
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 223
    .line 224
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 230
    .line 231
    if-nez v5, :cond_2

    .line 232
    .line 233
    new-instance v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 234
    .line 235
    invoke-direct {v5}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;-><init>()V

    .line 236
    .line 237
    .line 238
    sput-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 239
    .line 240
    :cond_2
    iput-object v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    .line 241
    .line 242
    iput v8, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungRotateButtonResId:I

    .line 243
    .line 244
    const v5, 0x7f14027a

    .line 245
    .line 246
    .line 247
    iput v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart0ResId:I

    .line 248
    .line 249
    const v5, 0x7f140277

    .line 250
    .line 251
    .line 252
    iput v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart0ResId:I

    .line 253
    .line 254
    const v5, 0x7f14027b

    .line 255
    .line 256
    .line 257
    iput v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart90ResId:I

    .line 258
    .line 259
    const v5, 0x7f140278

    .line 260
    .line 261
    .line 262
    iput v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart90ResId:I

    .line 263
    .line 264
    const v5, 0x7f140279

    .line 265
    .line 266
    .line 267
    iput v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart180ResId:I

    .line 268
    .line 269
    const v5, 0x7f140276

    .line 270
    .line 271
    .line 272
    iput v5, v3, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart180ResId:I

    .line 273
    .line 274
    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 275
    .line 276
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 280
    .line 281
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 285
    .line 286
    new-instance v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 287
    .line 288
    const v3, 0x7f0a0492

    .line 289
    .line 290
    .line 291
    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 298
    .line 299
    new-instance v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 300
    .line 301
    const v3, 0x7f0a0491

    .line 302
    .line 303
    .line 304
    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 311
    .line 312
    new-instance v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 313
    .line 314
    const v3, 0x7f0a0493

    .line 315
    .line 316
    .line 317
    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 324
    .line 325
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 326
    .line 327
    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;-><init>(Landroid/util/SparseArray;)V

    .line 328
    .line 329
    .line 330
    iput-object v1, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 331
    .line 332
    sget-boolean v1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 333
    .line 334
    if-eqz v1, :cond_3

    .line 335
    .line 336
    const-class v1, Lcom/android/systemui/searcle/SearcleManager;

    .line 337
    .line 338
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    check-cast v1, Lcom/android/systemui/searcle/SearcleManager;

    .line 343
    .line 344
    iput-object v1, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->searcleManager:Lcom/android/systemui/searcle/SearcleManager;

    .line 345
    .line 346
    if-eqz v1, :cond_3

    .line 347
    .line 348
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 349
    .line 350
    iput-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 351
    .line 352
    iget-object v0, v1, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 353
    .line 354
    iput-object v2, v0, Lcom/android/systemui/searcle/SearcleTipPopup;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 355
    .line 356
    :cond_3
    return-void
.end method


# virtual methods
.method public final getBackIconWithAlt(Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->backAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 10
    .line 11
    :goto_0
    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHintGroup()Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    return-object p0
.end method

.method public final getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    sget v0, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->$r8$clinit:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->pluginNavigationBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getGestureHandleDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final marqueeNavigationBarIcon(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->reorient()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    iget v2, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    .line 26
    .line 27
    const/16 v3, -0x10

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-gt v3, v2, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x11

    .line 34
    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    move v3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v5

    .line 40
    :goto_0
    if-nez v3, :cond_2

    .line 41
    .line 42
    iget v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    .line 43
    .line 44
    neg-int v3, v3

    .line 45
    iput v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    .line 46
    .line 47
    :cond_2
    iget v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    .line 48
    .line 49
    const/16 v6, -0xa

    .line 50
    .line 51
    if-gt v6, v3, :cond_3

    .line 52
    .line 53
    const/16 v6, 0xb

    .line 54
    .line 55
    if-ge v3, v6, :cond_3

    .line 56
    .line 57
    move v6, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v6, v5

    .line 60
    :goto_1
    if-nez v6, :cond_4

    .line 61
    .line 62
    iget v6, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    .line 63
    .line 64
    neg-int v6, v6

    .line 65
    iput v6, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    .line 66
    .line 67
    :cond_4
    iget v6, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    .line 68
    .line 69
    add-int/2addr v2, v6

    .line 70
    iput v2, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    .line 71
    .line 72
    iget v2, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    .line 73
    .line 74
    add-int/2addr v3, v2

    .line 75
    iput v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    .line 76
    .line 77
    const/high16 v2, 0x40800000    # 4.0f

    .line 78
    .line 79
    div-float/2addr v1, v2

    .line 80
    iput v1, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->scaleFactor:F

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    iget v1, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iget v1, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    .line 92
    .line 93
    :goto_2
    int-to-float v1, v1

    .line 94
    iget v0, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->scaleFactor:F

    .line 95
    .line 96
    mul-float/2addr v1, v0

    .line 97
    float-to-double v0, v1

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    double-to-int v0, v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 104
    .line 105
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 106
    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    iget v2, v1, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    iget v2, v1, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    .line 113
    .line 114
    :goto_3
    int-to-float v2, v2

    .line 115
    iget v1, v1, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->scaleFactor:F

    .line 116
    .line 117
    mul-float/2addr v2, v1

    .line 118
    float-to-double v1, v2

    .line 119
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    double-to-int v1, v1

    .line 124
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 127
    .line 128
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    int-to-double p1, p1

    .line 140
    const-wide v6, 0x3f96bb98c7e28241L    # 0.0222

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    mul-double/2addr p1, v6

    .line 146
    double-to-int p1, p1

    .line 147
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    move v3, v5

    .line 154
    :goto_4
    if-ge v3, p2, :cond_e

    .line 155
    .line 156
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 157
    .line 158
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 163
    .line 164
    if-eqz v2, :cond_c

    .line 165
    .line 166
    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 167
    .line 168
    iget-object v7, v7, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 169
    .line 170
    check-cast v7, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_8

    .line 181
    .line 182
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 187
    .line 188
    iget-object v8, v8, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 189
    .line 190
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-eqz v8, :cond_7

    .line 195
    .line 196
    move v7, v4

    .line 197
    goto :goto_5

    .line 198
    :cond_8
    move v7, v5

    .line 199
    :goto_5
    if-eqz v7, :cond_c

    .line 200
    .line 201
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 202
    .line 203
    if-ne v7, v4, :cond_9

    .line 204
    .line 205
    add-int v8, p1, v1

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_9
    move v8, v1

    .line 209
    :goto_6
    if-nez v7, :cond_a

    .line 210
    .line 211
    add-int/lit8 v9, p1, 0x0

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_a
    move v9, v5

    .line 215
    :goto_7
    const/4 v10, 0x3

    .line 216
    if-ne v7, v10, :cond_b

    .line 217
    .line 218
    add-int/lit8 v7, p1, 0x0

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_b
    move v7, v5

    .line 222
    :goto_8
    iget-object v6, v6, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-eqz v10, :cond_d

    .line 233
    .line 234
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    check-cast v10, Landroid/view/View;

    .line 239
    .line 240
    invoke-virtual {v10, v0, v8, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_c
    iget-object v6, v6, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_d

    .line 255
    .line 256
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    check-cast v7, Landroid/view/View;

    .line 261
    .line 262
    invoke-virtual {v7, v0, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 263
    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_e
    return-void
.end method

.method public final needTouchableInsetsFrame()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->imeVisible:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    .line 15
    .line 16
    if-nez v2, :cond_5

    .line 17
    .line 18
    :cond_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 26
    .line 27
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 28
    .line 29
    iget v4, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowKeyboardButtonForRotation(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_5

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 38
    .line 39
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 40
    .line 41
    iget v4, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canPlaceKeyboardButton(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    :cond_1
    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v0, v3

    .line 68
    :goto_0
    if-nez v0, :cond_5

    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavBarButtonForcedVisible()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->shouldShowSUWStyle()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move v1, v3

    .line 88
    :cond_5
    :goto_1
    return v1
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Landroid/view/DisplayInfo;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 25
    .line 26
    .line 27
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 30
    .line 31
    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    new-instance v4, Landroid/graphics/Rect;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    .line 47
    .line 48
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 49
    .line 50
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/graphics/Rect;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    :cond_1
    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->setCurrentRotation(IZ)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarTransitions;)V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    .line 5
    .line 6
    .line 7
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->searcleManager:Lcom/android/systemui/searcle/SearcleManager;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/searcle/SearcleTipPopup;->showSearcleTip(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 15
    .line 16
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    const v0, 0x7f0a072a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onImeVisibilityChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onImeVisibilityChanged(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->imeVisible:Z

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canPlaceKeyboardButton(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 38
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE:I

    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/navigationbar/NavigationBarView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    iget p2, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->navBarWidth:I

    .line 11
    .line 12
    if-eq p2, p0, :cond_0

    .line 13
    .line 14
    iget-object p2, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p0, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->navBarWidth:I

    .line 26
    .line 27
    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 12
    .line 13
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const v6, 0x105025a

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const v7, 0x1050255

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/4 v8, 0x0

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    const/4 v9, 0x2

    .line 67
    if-ne v2, v9, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v3, 0x1

    .line 71
    if-ne v2, v3, :cond_1

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 74
    .line 75
    new-instance v3, Landroid/graphics/Rect;

    .line 76
    .line 77
    sub-int v4, v0, v5

    .line 78
    .line 79
    invoke-direct {v3, v4, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 83
    .line 84
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const/4 v0, 0x3

    .line 88
    if-ne v2, v0, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 91
    .line 92
    new-instance v2, Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-direct {v2, v8, v8, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 98
    .line 99
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 103
    .line 104
    move v3, v8

    .line 105
    move v4, v3

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 107
    .line 108
    new-instance v7, Landroid/graphics/Rect;

    .line 109
    .line 110
    sub-int/2addr v6, v5

    .line 111
    sub-int/2addr v0, v4

    .line 112
    invoke-direct {v7, v3, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 116
    .line 117
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    .line 118
    .line 119
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->onMeasure(II)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onScreenStateChanged(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 32
    .line 33
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final reInflateNavBarLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->createInflaters()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateLayoutProviderView()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final reorient()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 31
    .line 32
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->setPreloadedIconSet(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setIconThemeAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpg-float v1, p1, v1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    xor-int/2addr v1, v2

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOutDisabled:Z

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 19
    .line 20
    const v1, 0x7f0a071a

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final showA11ySwipeUpTipPopup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "accessibility"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;

    .line 22
    .line 23
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final showPinningEscapeToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNewBackAffordanceEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateActiveIndicatorSpringParams(FF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNewBackAffordanceEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateBackPanelColor(IIII)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateCurrentView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentRotation()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-ne v0, v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 43
    .line 44
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 50
    .line 51
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 57
    .line 58
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    .line 59
    .line 60
    if-eq v1, v2, :cond_4

    .line 61
    .line 62
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    .line 63
    .line 64
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 68
    .line 69
    .line 70
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 77
    .line 78
    const v1, 0x7f0a0719

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteViewContainer()V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void
.end method

.method public final updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 5
    .line 6
    const/high16 v1, 0x400000

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const-wide/32 v1, 0x400000

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final updateGestureHintGroupRotation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isBottomGestureMode(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->setCurrentRotation(IZ)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final updateHintVisibility(ZZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    :goto_0
    rsub-int/lit8 v2, v0, 0x2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :cond_1
    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    move v6, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v6, v5

    .line 35
    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    move v4, v1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move v4, v5

    .line 51
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 59
    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    move p3, v1

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move p3, v5

    .line 65
    :goto_3
    invoke-virtual {v0, p3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-nez p1, :cond_6

    .line 73
    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    move v1, v5

    .line 78
    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final updateIcons(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 7
    .line 8
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    move p1, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p1, v2

    .line 32
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v3, :cond_3

    .line 45
    .line 46
    move v2, v3

    .line 47
    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isRTL:Z

    .line 48
    .line 49
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 56
    .line 57
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 64
    .line 65
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 72
    .line 73
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->backAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public final updateIconsAndHints()V
    .locals 1

    .line 1
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateNavButtonIcons()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final updateLayoutProviderView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateLayoutProviderView()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final updateNavButtonIcons()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_10

    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 13
    .line 14
    and-int/2addr v0, v3

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v4

    .line 20
    :goto_0
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ne v5, v3, :cond_1

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowButtonInLargeCoverIme()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    move v5, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v5, v4

    .line 43
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_a

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v6, v6, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 56
    .line 57
    check-cast v6, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    iget-object v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 62
    .line 63
    sget-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 64
    .line 65
    invoke-virtual {v7, v8, v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getGestureHandleDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 73
    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    move-object v6, v2

    .line 77
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 78
    .line 79
    iget-object v8, v6, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_5

    .line 90
    .line 91
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 96
    .line 97
    iget-object v9, v9, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 98
    .line 99
    check-cast v9, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;

    .line 100
    .line 101
    if-eqz v9, :cond_4

    .line 102
    .line 103
    iput-object v7, v9, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 107
    .line 108
    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 109
    .line 110
    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 111
    .line 112
    iget-boolean v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 113
    .line 114
    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->setCurrentRotation(IZ)V

    .line 115
    .line 116
    .line 117
    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 118
    .line 119
    if-eqz v6, :cond_6

    .line 120
    .line 121
    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-ne v6, v3, :cond_6

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    iget-object v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 134
    .line 135
    new-instance v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    .line 136
    .line 137
    invoke-direct {v6, v4, v4, v4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;-><init>(ZZZ)V

    .line 138
    .line 139
    .line 140
    iget v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 141
    .line 142
    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 143
    .line 144
    invoke-virtual {v5, p0, v6, v7}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 149
    .line 150
    new-instance v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-nez v7, :cond_7

    .line 161
    .line 162
    move v7, v3

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    move v7, v4

    .line 165
    :goto_3
    iget v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 166
    .line 167
    const/high16 v9, 0x200000

    .line 168
    .line 169
    and-int/2addr v9, v8

    .line 170
    if-nez v9, :cond_8

    .line 171
    .line 172
    move v9, v3

    .line 173
    goto :goto_4

    .line 174
    :cond_8
    move v9, v4

    .line 175
    :goto_4
    const/high16 v10, 0x400000

    .line 176
    .line 177
    and-int/2addr v8, v10

    .line 178
    if-nez v8, :cond_9

    .line 179
    .line 180
    move v8, v3

    .line 181
    goto :goto_5

    .line 182
    :cond_9
    move v8, v4

    .line 183
    :goto_5
    invoke-direct {v6, v7, v9, v8}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;-><init>(ZZZ)V

    .line 184
    .line 185
    .line 186
    iget v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 187
    .line 188
    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 189
    .line 190
    invoke-virtual {v5, p0, v6, v7}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 191
    .line 192
    .line 193
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 194
    .line 195
    iget-object v6, v5, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 196
    .line 197
    iget v6, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 198
    .line 199
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyDarkIntensity(F)V

    .line 200
    .line 201
    .line 202
    :cond_a
    if-eqz v0, :cond_e

    .line 203
    .line 204
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 205
    .line 206
    iget-object v6, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 207
    .line 208
    iget v6, v6, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_c

    .line 215
    .line 216
    iget-object v7, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_b

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canPlaceKeyboardButton(I)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_b

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_b
    move v5, v4

    .line 232
    goto :goto_8

    .line 233
    :cond_c
    :goto_7
    move v5, v3

    .line 234
    :goto_8
    iput-boolean v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    .line 235
    .line 236
    if-nez v5, :cond_d

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v5, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 246
    .line 247
    iget-object v6, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 248
    .line 249
    iget v6, v6, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowKeyboardButtonForRotation(I)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-nez v5, :cond_e

    .line 256
    .line 257
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 258
    .line 259
    const v6, 0x7f0a04c2

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 263
    .line 264
    .line 265
    :cond_e
    if-eqz v0, :cond_f

    .line 266
    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    .line 268
    .line 269
    if-eqz v0, :cond_f

    .line 270
    .line 271
    move v0, v3

    .line 272
    goto :goto_9

    .line 273
    :cond_f
    move v0, v4

    .line 274
    :goto_9
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 275
    .line 276
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-eqz v5, :cond_10

    .line 281
    .line 282
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->notifyHideKeyboard:Z

    .line 283
    .line 284
    if-eq v5, v0, :cond_10

    .line 285
    .line 286
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->notifyHideKeyboard:Z

    .line 287
    .line 288
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/shade/ShadeViewController;

    .line 289
    .line 290
    if-eqz v5, :cond_10

    .line 291
    .line 292
    check-cast v5, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 293
    .line 294
    iput-boolean v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavBarKeyboardButtonShowing:Z

    .line 295
    .line 296
    :cond_10
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 297
    .line 298
    if-eqz v0, :cond_11

    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    .line 301
    .line 302
    if-eqz v0, :cond_11

    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteViewContainerVisibility()V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 308
    .line 309
    new-instance v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;

    .line 310
    .line 311
    invoke-direct {v5, v4, v3, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 312
    .line 313
    .line 314
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 315
    .line 316
    invoke-virtual {v0, p0, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 317
    .line 318
    .line 319
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 320
    .line 321
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 322
    .line 323
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 324
    .line 325
    iget-object v0, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 326
    .line 327
    if-eqz v0, :cond_12

    .line 328
    .line 329
    move v0, v3

    .line 330
    goto :goto_a

    .line 331
    :cond_12
    move v0, v4

    .line 332
    :goto_a
    if-eqz v0, :cond_16

    .line 333
    .line 334
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_16

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_13

    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_13

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_13
    move v3, v4

    .line 364
    :goto_b
    const v0, 0x7f0a0720

    .line 365
    .line 366
    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    const v0, 0x7f0a071b

    .line 372
    .line 373
    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    const v0, 0x7f0a071c

    .line 379
    .line 380
    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    const v0, 0x7f0a071d

    .line 386
    .line 387
    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    const v0, 0x7f0a071e

    .line 393
    .line 394
    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    const v0, 0x7f0a071f

    .line 400
    .line 401
    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v10

    .line 406
    filled-new-array/range {v5 .. v10}, [Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    :cond_14
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_16

    .line 423
    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    check-cast v2, Ljava/lang/Number;

    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 435
    .line 436
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 441
    .line 442
    if-eqz v2, :cond_14

    .line 443
    .line 444
    if-eqz v3, :cond_15

    .line 445
    .line 446
    move v5, v4

    .line 447
    goto :goto_d

    .line 448
    :cond_15
    move v5, v1

    .line 449
    :goto_d
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    goto :goto_c

    .line 453
    :cond_16
    return-void
.end method

.method public final updateNavigationBarColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 4
    .line 5
    const-class v2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 21
    .line 22
    const v2, 0x7f0601fd

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "getNavigationBarColor"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 57
    .line 58
    const-string/jumbo v1, "navigationbar_current_color"

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final updateOpaqueColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateRemoteViewContainer()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const v2, 0x7f0a05af

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v3, v1

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const v1, 0x7f0a08d6

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    :cond_2
    move-object v4, v1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    :goto_1
    move v6, v0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteViewContainerVisibility()V

    .line 50
    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    if-eqz v4, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 57
    .line 58
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const/4 v2, 0x0

    .line 71
    :goto_2
    move v5, v2

    .line 72
    iget v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 73
    .line 74
    move-object v2, v1

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFI)V

    .line 76
    .line 77
    .line 78
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 79
    .line 80
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method public final updateRemoteViewContainerVisibility()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const-class v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 14
    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x4

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 26
    .line 27
    const v6, 0x7f0a04c2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    move v5, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v5, v4

    .line 47
    :goto_0
    if-nez v5, :cond_3

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    iget-boolean v5, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v5, v4

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    move v5, v3

    .line 65
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_3
    iget p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    .line 69
    .line 70
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 86
    .line 87
    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 102
    .line 103
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 104
    .line 105
    if-ne p0, v2, :cond_5

    .line 106
    .line 107
    iget p0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    .line 108
    .line 109
    rsub-int/lit8 p0, p0, 0x1

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    iget p0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    .line 113
    .line 114
    :goto_4
    iget-object v1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    if-nez v1, :cond_6

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_6
    if-nez p0, :cond_7

    .line 120
    .line 121
    move v5, v4

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    move v5, v3

    .line 124
    :goto_5
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :goto_6
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_8
    if-ne p0, v2, :cond_9

    .line 133
    .line 134
    move v3, v4

    .line 135
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    :cond_a
    :goto_7
    return-void
.end method
