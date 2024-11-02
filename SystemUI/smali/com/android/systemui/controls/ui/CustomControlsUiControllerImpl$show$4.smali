.class final synthetic Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x2

    .line 2
    const-class v3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 3
    .line 4
    const-string/jumbo v4, "showControlsView"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v5, "showControlsView(Ljava/util/List;Ljava/util/List;)V"

    .line 8
    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/util/List;

    .line 8
    .line 9
    move-object/from16 v2, p0

    .line 10
    .line 11
    iget-object v2, v2, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 14
    .line 15
    sget v3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "showControlsView"

    .line 21
    .line 22
    .line 23
    const-string v4, "CustomControlsUiControllerImpl"

    .line 24
    .line 25
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-object v1, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    move-object v8, v7

    .line 55
    check-cast v8, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 56
    .line 57
    iget-boolean v8, v8, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->isPanel:Z

    .line 58
    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v6, Lkotlin/Pair;

    .line 70
    .line 71
    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/util/List;

    .line 85
    .line 86
    new-instance v6, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    iget-object v5, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->localeComparator:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$special$$inlined$compareBy$1;

    .line 98
    .line 99
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    .line 101
    .line 102
    iget-object v5, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, 0x1

    .line 114
    const/4 v10, 0x0

    .line 115
    if-eqz v7, :cond_5

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    move-object v11, v7

    .line 122
    check-cast v11, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 123
    .line 124
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    iget-object v13, v11, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 132
    .line 133
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-nez v12, :cond_3

    .line 138
    .line 139
    move v11, v8

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    iget-boolean v11, v11, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->isPanel:Z

    .line 142
    .line 143
    if-nez v11, :cond_4

    .line 144
    .line 145
    instance-of v11, v5, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 146
    .line 147
    :cond_4
    move v11, v9

    .line 148
    :goto_1
    if-eqz v11, :cond_2

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    move-object v7, v10

    .line 152
    :goto_2
    check-cast v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 153
    .line 154
    if-nez v7, :cond_7

    .line 155
    .line 156
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    xor-int/2addr v5, v9

    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    move-object v7, v0

    .line 168
    check-cast v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v7, v0

    .line 176
    check-cast v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 177
    .line 178
    :cond_7
    :goto_3
    if-eqz v7, :cond_18

    .line 179
    .line 180
    iget-boolean v0, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->isPanel:Z

    .line 181
    .line 182
    iget-object v3, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 183
    .line 184
    iget-object v5, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->appName:Ljava/lang/CharSequence;

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    new-instance v6, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 189
    .line 190
    invoke-direct {v6, v5, v3}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-eqz v11, :cond_a

    .line 207
    .line 208
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    move-object v12, v11

    .line 213
    check-cast v12, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 214
    .line 215
    iget-object v12, v12, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 216
    .line 217
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    if-eqz v12, :cond_9

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_a
    move-object v11, v10

    .line 225
    :goto_4
    check-cast v11, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 226
    .line 227
    if-nez v11, :cond_b

    .line 228
    .line 229
    sget-object v3, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    sget-object v11, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 235
    .line 236
    :cond_b
    new-instance v6, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 237
    .line 238
    invoke-direct {v6, v5, v11}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 239
    .line 240
    .line 241
    :goto_5
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 242
    .line 243
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-nez v3, :cond_c

    .line 248
    .line 249
    iput-object v6, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 250
    .line 251
    new-instance v3, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    .line 252
    .line 253
    invoke-direct {v3, v6}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 254
    .line 255
    .line 256
    iget-object v5, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    .line 257
    .line 258
    check-cast v5, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    .line 259
    .line 260
    invoke-virtual {v5, v3}, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    .line 261
    .line 262
    .line 263
    :cond_c
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_d

    .line 270
    .line 271
    if-nez v0, :cond_e

    .line 272
    .line 273
    :cond_d
    if-nez v0, :cond_17

    .line 274
    .line 275
    :cond_e
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 276
    .line 277
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    xor-int/2addr v0, v9

    .line 282
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 283
    .line 284
    check-cast v3, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;

    .line 285
    .line 286
    iget v5, v7, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->uid:I

    .line 287
    .line 288
    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->refreshBegin(IZ)V

    .line 289
    .line 290
    .line 291
    const-string/jumbo v0, "showMainView()"

    .line 292
    .line 293
    .line 294
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 303
    .line 304
    const-string v3, "ControlsOOBEManageAppsCompleted"

    .line 305
    .line 306
    invoke-static {v0, v3, v8}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-nez v4, :cond_f

    .line 311
    .line 312
    invoke-static {v0, v3, v9}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 313
    .line 314
    .line 315
    :cond_f
    const-class v0, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 322
    .line 323
    if-nez v3, :cond_13

    .line 324
    .line 325
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 326
    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    goto :goto_6

    .line 334
    :cond_10
    move-object v3, v10

    .line 335
    :goto_6
    instance-of v4, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 336
    .line 337
    if-eqz v4, :cond_11

    .line 338
    .line 339
    move-object v10, v3

    .line 340
    check-cast v10, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 341
    .line 342
    :cond_11
    if-nez v10, :cond_12

    .line 343
    .line 344
    new-instance v10, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 345
    .line 346
    iget-object v4, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 347
    .line 348
    iget-object v5, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 349
    .line 350
    iget-object v6, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 351
    .line 352
    iget-object v7, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 353
    .line 354
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 355
    .line 356
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    move-object v8, v3

    .line 361
    check-cast v8, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 362
    .line 363
    move-object v3, v10

    .line 364
    move-object v9, v2

    .line 365
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/controls/ui/fragment/MainFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/CustomControlsUiController;)V

    .line 366
    .line 367
    .line 368
    :cond_12
    iput-object v10, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 369
    .line 370
    :cond_13
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 371
    .line 372
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    iget-object v4, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 376
    .line 377
    if-nez v4, :cond_15

    .line 378
    .line 379
    iget-object v4, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 380
    .line 381
    if-eqz v4, :cond_15

    .line 382
    .line 383
    iget-object v4, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 384
    .line 385
    if-eqz v4, :cond_15

    .line 386
    .line 387
    new-instance v4, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 388
    .line 389
    move-object v5, v4

    .line 390
    iget-object v7, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 391
    .line 392
    move-object v6, v7

    .line 393
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    iget-object v15, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 397
    .line 398
    invoke-interface {v15}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    check-cast v7, Lcom/android/systemui/controls/controller/ControlsController;

    .line 403
    .line 404
    iget-object v8, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 405
    .line 406
    iget-object v9, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 407
    .line 408
    iget-object v10, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 409
    .line 410
    iget-object v11, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 411
    .line 412
    iget-object v12, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 413
    .line 414
    iget-object v13, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 415
    .line 416
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 420
    .line 421
    .line 422
    move-result-object v13

    .line 423
    const v14, 0x7f0a00d3

    .line 424
    .line 425
    .line 426
    invoke-virtual {v13, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 427
    .line 428
    .line 429
    move-result-object v13

    .line 430
    check-cast v13, Lcom/google/android/material/appbar/AppBarLayout;

    .line 431
    .line 432
    iget-object v14, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 433
    .line 434
    move-object/from16 v16, v15

    .line 435
    .line 436
    iget-object v15, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 437
    .line 438
    move-object/from16 v25, v16

    .line 439
    .line 440
    move-object/from16 p0, v0

    .line 441
    .line 442
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;

    .line 443
    .line 444
    move-object/from16 v16, v0

    .line 445
    .line 446
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsPanelCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;

    .line 447
    .line 448
    move-object/from16 v17, v0

    .line 449
    .line 450
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    .line 451
    .line 452
    move-object/from16 v18, v0

    .line 453
    .line 454
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    .line 455
    .line 456
    move-object/from16 v19, v0

    .line 457
    .line 458
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->openAppButtonClickListener:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;

    .line 459
    .line 460
    move-object/from16 v20, v0

    .line 461
    .line 462
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 463
    .line 464
    move-object/from16 v21, v0

    .line 465
    .line 466
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 467
    .line 468
    move-object/from16 v22, v0

    .line 469
    .line 470
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 471
    .line 472
    move-object/from16 v23, v0

    .line 473
    .line 474
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 475
    .line 476
    move-object/from16 v24, v0

    .line 477
    .line 478
    invoke-interface/range {v25 .. v25}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 483
    .line 484
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 485
    .line 486
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    .line 487
    .line 488
    .line 489
    move-result v25

    .line 490
    invoke-direct/range {v5 .. v25}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/google/android/material/appbar/AppBarLayout;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/util/ControlsRuneWrapper;I)V

    .line 491
    .line 492
    .line 493
    iget-object v0, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 494
    .line 495
    if-eqz v0, :cond_14

    .line 496
    .line 497
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 498
    .line 499
    .line 500
    :cond_14
    iput-object v4, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 501
    .line 502
    iput-object v4, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 503
    .line 504
    goto :goto_7

    .line 505
    :cond_15
    move-object/from16 p0, v0

    .line 506
    .line 507
    :goto_7
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iget-object v3, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 512
    .line 513
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 514
    .line 515
    .line 516
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 517
    .line 518
    if-eqz v0, :cond_16

    .line 519
    .line 520
    iget-object v1, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 521
    .line 522
    iput-object v1, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 523
    .line 524
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 525
    .line 526
    .line 527
    :cond_16
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 528
    .line 529
    if-eqz v0, :cond_19

    .line 530
    .line 531
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 532
    .line 533
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 534
    .line 535
    .line 536
    iget-object v0, v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 537
    .line 538
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    const v2, 0x7f0a0417

    .line 542
    .line 543
    .line 544
    move-object/from16 v3, p0

    .line 545
    .line 546
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commitAllowingStateLoss()I

    .line 550
    .line 551
    .line 552
    goto :goto_8

    .line 553
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v1, "Not TaskViewFactory to display panel "

    .line 556
    .line 557
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    goto :goto_8

    .line 571
    :cond_18
    const-string/jumbo v0, "showControlsView selectionItem is null"

    .line 572
    .line 573
    .line 574
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    :cond_19
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 578
    .line 579
    return-object v0
.end method
