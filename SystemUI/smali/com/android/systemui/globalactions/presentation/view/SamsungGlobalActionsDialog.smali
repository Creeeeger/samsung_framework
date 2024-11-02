.class public final Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 17

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-direct {v12, v2, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f140563

    .line 16
    .line 17
    .line 18
    iput v1, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialogStyle:I

    .line 19
    .line 20
    new-instance v8, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;

    .line 21
    .line 22
    invoke-direct {v8, v0}, Lcom/android/systemui/globalactions/presentation/SystemUIGlobalActionsManager;-><init>(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    .line 26
    .line 27
    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v9, v1, v8}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;)V

    .line 30
    .line 31
    .line 32
    new-instance v10, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;

    .line 33
    .line 34
    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {v10, v1, v0, v9}, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V

    .line 37
    .line 38
    .line 39
    const-class v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 40
    .line 41
    invoke-virtual {v10, v0}, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 46
    .line 47
    iput-object v0, v12, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 48
    .line 49
    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 50
    .line 51
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 56
    .line 57
    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 58
    .line 59
    const-string v1, "[SystemUI]"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 65
    .line 66
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 71
    .line 72
    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 73
    .line 74
    const-class v0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 75
    .line 76
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 81
    .line 82
    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 83
    .line 84
    const-class v0, Lcom/samsung/android/globalactions/util/ToastController;

    .line 85
    .line 86
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/samsung/android/globalactions/util/ToastController;

    .line 91
    .line 92
    iput-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 93
    .line 94
    new-instance v0, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;

    .line 95
    .line 96
    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    const-class v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 99
    .line 100
    invoke-virtual {v9, v2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 105
    .line 106
    const-class v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    .line 107
    .line 108
    invoke-virtual {v9, v3}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    .line 113
    .line 114
    iget-object v4, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 115
    .line 116
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;

    .line 120
    .line 121
    new-instance v2, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    .line 122
    .line 123
    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 124
    .line 125
    invoke-direct {v2, v9, v0, v3}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 126
    .line 127
    .line 128
    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 129
    .line 130
    invoke-direct {v1, v10, v2, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 131
    .line 132
    .line 133
    new-instance v11, Lcom/android/systemui/globalactions/util/SamsungGlobalActionsAnalyticsImpl;

    .line 134
    .line 135
    invoke-direct {v11}, Lcom/android/systemui/globalactions/util/SamsungGlobalActionsAnalyticsImpl;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v2, "611"

    .line 139
    .line 140
    const-string v3, "6111"

    .line 141
    .line 142
    invoke-virtual {v11, v2, v3}, Lcom/android/systemui/globalactions/util/SamsungGlobalActionsAnalyticsImpl;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string/jumbo v2, "user"

    .line 146
    .line 147
    .line 148
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_0

    .line 155
    .line 156
    new-instance v2, Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    .line 157
    .line 158
    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    iget-object v4, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 161
    .line 162
    invoke-direct {v2, v3, v1, v4}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 163
    .line 164
    .line 165
    new-instance v1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    .line 166
    .line 167
    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    iget-object v4, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 170
    .line 171
    invoke-direct {v1, v3, v0, v4}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 172
    .line 173
    .line 174
    move-object v14, v1

    .line 175
    move-object v13, v2

    .line 176
    goto :goto_0

    .line 177
    :cond_0
    move-object v14, v0

    .line 178
    move-object v13, v1

    .line 179
    :goto_0
    new-instance v15, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    .line 180
    .line 181
    iget-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 182
    .line 183
    invoke-direct {v15, v9, v0, v13, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;

    .line 187
    .line 188
    iget-object v5, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 189
    .line 190
    move-object v2, v1

    .line 191
    move-object v3, v15

    .line 192
    move-object v4, v10

    .line 193
    move-object v6, v13

    .line 194
    move-object v7, v11

    .line 195
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 196
    .line 197
    .line 198
    new-instance v7, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;

    .line 199
    .line 200
    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    iget-object v6, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 203
    .line 204
    move-object v0, v7

    .line 205
    move-object v5, v1

    .line 206
    move-object v1, v2

    .line 207
    move-object/from16 v2, p0

    .line 208
    .line 209
    move-object v3, v10

    .line 210
    move-object v4, v5

    .line 211
    move-object v10, v5

    .line 212
    move-object v5, v14

    .line 213
    move-object v14, v6

    .line 214
    move-object v6, v13

    .line 215
    move-object/from16 p1, v11

    .line 216
    .line 217
    move-object v11, v7

    .line 218
    move-object v7, v14

    .line 219
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/globalactions/presentation/features/GlobalActionsFeatureFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 220
    .line 221
    .line 222
    iput-object v11, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 223
    .line 224
    invoke-virtual {v15, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 228
    .line 229
    iput-object v0, v10, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactoryDecorator;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 230
    .line 231
    new-instance v14, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 232
    .line 233
    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 234
    .line 235
    const-class v0, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 236
    .line 237
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object v5, v0

    .line 242
    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 243
    .line 244
    const-class v0, Lcom/samsung/android/globalactions/util/SystemController;

    .line 245
    .line 246
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object v6, v0

    .line 251
    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    .line 252
    .line 253
    iget-object v11, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 254
    .line 255
    const-class v0, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 256
    .line 257
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object v15, v0

    .line 262
    check-cast v15, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 263
    .line 264
    const-class v0, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    .line 265
    .line 266
    invoke-virtual {v9, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    move-object/from16 v16, v0

    .line 271
    .line 272
    check-cast v16, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    .line 273
    .line 274
    move-object v0, v14

    .line 275
    move-object/from16 v1, p0

    .line 276
    .line 277
    move-object v3, v10

    .line 278
    move-object v4, v8

    .line 279
    move-object v7, v13

    .line 280
    move-object v8, v11

    .line 281
    move-object v9, v15

    .line 282
    move-object/from16 v10, v16

    .line 283
    .line 284
    move-object/from16 v11, p1

    .line 285
    .line 286
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 287
    .line 288
    .line 289
    iput-object v14, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 290
    .line 291
    iput-object v13, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 292
    .line 293
    const-class v0, Lcom/android/systemui/model/SysUiState;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Lcom/android/systemui/model/SysUiState;

    .line 300
    .line 301
    iput-object v0, v12, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 302
    .line 303
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 2
    .line 3
    const-wide/32 v1, 0x8000

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final showDialog()V
    .locals 14

    .line 1
    new-instance v13, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 18
    .line 19
    iget-object v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 20
    .line 21
    iget-object v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 22
    .line 23
    iget-boolean v12, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFromSystemServer:Z

    .line 24
    .line 25
    move-object v0, v13

    .line 26
    move-object v2, p0

    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/globalactions/presentation/view/ContentViewFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v13, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SamsungGlobalActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 33
    .line 34
    const-wide/32 v1, 0x8000

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 48
    .line 49
    .line 50
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->showDialog()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
