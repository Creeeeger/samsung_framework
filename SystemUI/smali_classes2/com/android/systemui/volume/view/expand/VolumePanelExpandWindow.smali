.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 11

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    check-cast v1, Lcom/android/systemui/volume/VolumeDependency;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$store$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$store$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$storeInteractor$2;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    const-class v2, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    .line 48
    .line 49
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 54
    .line 55
    iput-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 56
    .line 57
    const-class v4, Lcom/android/systemui/basic/util/LogWrapper;

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/systemui/basic/util/LogWrapper;

    .line 64
    .line 65
    iput-object v5, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/4 v6, 0x1

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    .line 76
    .line 77
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x2

    .line 87
    invoke-virtual {v5, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 88
    .line 89
    .line 90
    const v7, 0x10c0128

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const/16 v9, 0x7e4

    .line 101
    .line 102
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 103
    .line 104
    const/4 v9, -0x3

    .line 105
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 106
    .line 107
    const-string v9, "VolumePanelExpandWindow"

    .line 108
    .line 109
    invoke-virtual {v7, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    const/4 v9, -0x1

    .line 113
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const v10, 0x7f13121c

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iput-object v9, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/android/systemui/volume/config/SystemConfigImpl;->getHasCutout()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_0

    .line 133
    .line 134
    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 135
    .line 136
    const v9, 0x4000400

    .line 137
    .line 138
    .line 139
    or-int/2addr v3, v9

    .line 140
    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 141
    .line 142
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 143
    .line 144
    :cond_0
    invoke-virtual {v5, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    const v3, 0x7f0d050b

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 151
    .line 152
    .line 153
    const v3, 0x7f0a0cfc

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 161
    .line 162
    iput-object v3, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 163
    .line 164
    iput-object p0, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 165
    .line 166
    const-class v5, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 167
    .line 168
    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 173
    .line 174
    iput-object v5, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 175
    .line 176
    const-class v5, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 177
    .line 178
    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 183
    .line 184
    iput-object v5, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lcom/android/systemui/basic/util/LogWrapper;

    .line 191
    .line 192
    iput-object v4, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 193
    .line 194
    const-class v4, Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 195
    .line 196
    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 201
    .line 202
    iput-object v4, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 203
    .line 204
    new-instance v4, Lcom/android/systemui/volume/util/BlurEffect;

    .line 205
    .line 206
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-direct {v4, v5, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 211
    .line 212
    .line 213
    iput-object v4, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 220
    .line 221
    iget-object p1, p1, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    .line 222
    .line 223
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 228
    .line 229
    iput-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 230
    .line 231
    iget-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 232
    .line 233
    iget-object v1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 234
    .line 235
    const/4 v2, 0x0

    .line 236
    if-nez v1, :cond_2

    .line 237
    .line 238
    move-object v1, v2

    .line 239
    :cond_2
    iput-object v1, p1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 240
    .line 241
    iget-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 242
    .line 243
    if-nez p1, :cond_3

    .line 244
    .line 245
    move-object p1, v2

    .line 246
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$1;

    .line 258
    .line 259
    invoke-direct {v1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 263
    .line 264
    .line 265
    iget-object p1, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 266
    .line 267
    if-nez p1, :cond_4

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_4
    move-object v2, p1

    .line 271
    :goto_0
    new-instance p1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;

    .line 272
    .line 273
    invoke-direct {p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 289
    .line 290
    .line 291
    iget-object p0, v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 294
    .line 295
    .line 296
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 10
    .line 11
    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    move-object p1, v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move-object v0, v1

    .line 86
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$1;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;

    .line 103
    .line 104
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$startDismissAnimation$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const p0, 0x7f0a0d18

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const/4 v3, 0x2

    .line 118
    new-array v4, v3, [F

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    const/4 v6, 0x0

    .line 125
    aput v5, v4, v6

    .line 126
    .line 127
    const/4 v5, 0x1

    .line 128
    const/4 v7, 0x0

    .line 129
    aput v7, v4, v5

    .line 130
    .line 131
    const-string v8, "alpha"

    .line 132
    .line 133
    invoke-static {v0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const-wide/16 v8, 0xc8

    .line 138
    .line 139
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    .line 141
    .line 142
    new-instance v10, Landroid/view/animation/PathInterpolator;

    .line 143
    .line 144
    const v11, 0x3ea8f5c3    # 0.33f

    .line 145
    .line 146
    .line 147
    const v12, 0x3f2b851f    # 0.67f

    .line 148
    .line 149
    .line 150
    const/high16 v13, 0x3f800000    # 1.0f

    .line 151
    .line 152
    invoke-direct {v10, v11, v7, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    .line 157
    .line 158
    new-instance v10, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;

    .line 159
    .line 160
    invoke-direct {v10, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    .line 165
    .line 166
    new-array v1, v3, [F

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    aput v3, v1, v6

    .line 173
    .line 174
    const v3, 0x3f666666    # 0.9f

    .line 175
    .line 176
    .line 177
    aput v3, v1, v5

    .line 178
    .line 179
    const-string/jumbo v3, "scaleX"

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    new-instance v3, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$scaleAnimator$1$1;

    .line 187
    .line 188
    invoke-direct {v3, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 195
    .line 196
    .line 197
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 198
    .line 199
    invoke-direct {v0, v11, v7, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 206
    .line 207
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 208
    .line 209
    .line 210
    filled-new-array {v4}, [Landroid/animation/Animator;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 215
    .line 216
    .line 217
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 222
    .line 223
    .line 224
    invoke-static {p0, v6}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    filled-new-array {p0}, [Landroid/animation/Animator;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    .line 234
    .line 235
    new-instance p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$1$1;

    .line 236
    .line 237
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumePanelMotion$startHideVolumeExpandAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    .line 245
    .line 246
    :cond_3
    :goto_1
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    const-string v0, "VolumePanelExpandWindow"

    .line 7
    .line 8
    const-string v1, "onStart"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "onStop : panelState.isExpanded="

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "VolumePanelExpandWindow"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 44
    .line 45
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 52
    .line 53
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
