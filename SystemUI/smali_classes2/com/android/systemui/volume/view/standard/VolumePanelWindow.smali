.class public final Lcom/android/systemui/volume/view/standard/VolumePanelWindow;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 8

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
    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$store$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$store$2;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelWindow;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelWindow;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    const-class v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    .line 48
    .line 49
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 56
    .line 57
    const-class v2, Lcom/android/systemui/basic/util/LogWrapper;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/systemui/basic/util/LogWrapper;

    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 66
    .line 67
    const-class v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x1

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 85
    .line 86
    .line 87
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x2

    .line 97
    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 98
    .line 99
    .line 100
    const v4, 0x10c0128

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const/16 v6, 0x7e4

    .line 111
    .line 112
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 113
    .line 114
    const/4 v6, -0x3

    .line 115
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 116
    .line 117
    const-string v6, "VolumePanelWindow"

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    const/4 v6, -0x1

    .line 123
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const v7, 0x7f13121c

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/volume/config/SystemConfigImpl;->getHasCutout()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    .line 144
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 145
    .line 146
    const v6, 0x4000400

    .line 147
    .line 148
    .line 149
    or-int/2addr v0, v6

    .line 150
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 151
    .line 152
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 153
    .line 154
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    :cond_1
    const v0, 0x7f0d050e

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 161
    .line 162
    .line 163
    const v0, 0x7f0a0d07

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 171
    .line 172
    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 173
    .line 174
    const-string v2, "VolumePanelView"

    .line 175
    .line 176
    const-string v4, "VolumePanelView: bind"

    .line 177
    .line 178
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    iput-object p0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 182
    .line 183
    const-class v2, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 190
    .line 191
    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 192
    .line 193
    const-class v2, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 200
    .line 201
    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 202
    .line 203
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    iput-object v4, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 210
    .line 211
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 212
    .line 213
    const-class v2, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 220
    .line 221
    const-class v2, Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 228
    .line 229
    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 230
    .line 231
    new-instance v2, Lcom/android/systemui/volume/util/BlurEffect;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-direct {v2, v4, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 238
    .line 239
    .line 240
    iput-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 241
    .line 242
    const-class p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 243
    .line 244
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 249
    .line 250
    const-class p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 251
    .line 252
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 257
    .line 258
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 259
    .line 260
    const-class p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 261
    .line 262
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 267
    .line 268
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 269
    .line 270
    const-class p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 271
    .line 272
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 277
    .line 278
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 279
    .line 280
    const-class p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 281
    .line 282
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 287
    .line 288
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 289
    .line 290
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 291
    .line 292
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_2

    .line 294
    .line 295
    move-object p1, v1

    .line 296
    :cond_2
    new-instance v2, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$1;

    .line 297
    .line 298
    invoke-direct {v2, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 305
    .line 306
    if-nez p1, :cond_3

    .line 307
    .line 308
    move-object p1, v1

    .line 309
    :cond_3
    const v2, 0x7f0a0cf7

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Landroid/view/ViewGroup;

    .line 317
    .line 318
    sget-object v2, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$2;->INSTANCE:Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$2;

    .line 319
    .line 320
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 324
    .line 325
    if-nez p1, :cond_4

    .line 326
    .line 327
    move-object p1, v1

    .line 328
    :cond_4
    new-instance v2, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;

    .line 329
    .line 330
    invoke-direct {v2, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 337
    .line 338
    if-nez p1, :cond_5

    .line 339
    .line 340
    move-object p1, v1

    .line 341
    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    new-instance v2, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$4;

    .line 353
    .line 354
    invoke-direct {v2, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$4;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 361
    .line 362
    if-nez p1, :cond_6

    .line 363
    .line 364
    move-object p1, v1

    .line 365
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 366
    .line 367
    if-nez v2, :cond_7

    .line 368
    .line 369
    move-object v2, v1

    .line 370
    :cond_7
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    invoke-static {v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 389
    .line 390
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 391
    .line 392
    if-nez p1, :cond_8

    .line 393
    .line 394
    move-object p1, v1

    .line 395
    :cond_8
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 396
    .line 397
    if-nez v2, :cond_9

    .line 398
    .line 399
    move-object v2, v1

    .line 400
    :cond_9
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 419
    .line 420
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 421
    .line 422
    if-nez p1, :cond_a

    .line 423
    .line 424
    move-object p1, v1

    .line 425
    :cond_a
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 426
    .line 427
    if-nez v2, :cond_b

    .line 428
    .line 429
    move-object v2, v1

    .line 430
    :cond_b
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-static {v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 449
    .line 450
    iget-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 451
    .line 452
    if-nez p1, :cond_c

    .line 453
    .line 454
    move-object p1, v1

    .line 455
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 456
    .line 457
    if-nez v2, :cond_d

    .line 458
    .line 459
    goto :goto_0

    .line 460
    :cond_d
    move-object v1, v2

    .line 461
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    invoke-static {v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    iput-object p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 480
    .line 481
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    const v1, 0x7f071570

    .line 486
    .line 487
    .line 488
    invoke-static {v1, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    iput p1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->swipeDistance:F

    .line 493
    .line 494
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 495
    .line 496
    .line 497
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final getBaseHeight$1()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 46
    .line 47
    sget v4, Lcom/android/systemui/volume/util/SettingsHelperExt;->$r8$clinit:I

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v1, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    move v1, v2

    .line 65
    :goto_1
    if-nez v1, :cond_4

    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v2, v3

    .line 79
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const v1, 0x7f070968

    .line 86
    .line 87
    .line 88
    invoke-static {v1, p0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    add-int/2addr v0, p0

    .line 93
    :cond_5
    return v0
.end method

.method public final getSeekBarY(I)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f071578

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-int v0, p1, v0

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    int-to-float p0, p1

    .line 46
    div-float/2addr p0, v2

    .line 47
    sub-float/2addr v0, p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    sget-object p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    sget-object p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    sget-object p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget p0, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    .line 104
    .line 105
    :goto_0
    mul-float/2addr v0, p0

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    div-float/2addr v0, v2

    .line 108
    :goto_2
    return v0
.end method

.method public final observeStore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v2, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 33
    .line 34
    iput-object v1, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 35
    .line 36
    iput-object p0, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->context:Landroid/content/Context;

    .line 37
    .line 38
    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/systemui/volume/view/standard/VolumePanelWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v2, v3, v2

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const-class v11, Lcom/android/systemui/util/SettingsHelper;

    .line 22
    .line 23
    packed-switch v2, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_34

    .line 27
    .line 28
    :pswitch_0
    iget-object v2, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startDismissAnimation()V

    .line 31
    .line 32
    .line 33
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 34
    .line 35
    const/4 v12, 0x1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    move v1, v12

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v1, v9

    .line 47
    :goto_0
    if-nez v1, :cond_71

    .line 48
    .line 49
    new-instance v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/high16 v13, 0x40000000    # 2.0f

    .line 61
    .line 62
    const/4 v14, 0x2

    .line 63
    const v15, 0x7f07155a

    .line 64
    .line 65
    .line 66
    const v6, 0x7f071559

    .line 67
    .line 68
    .line 69
    if-eqz v0, :cond_b

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    sget-boolean v17, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 76
    .line 77
    if-eqz v17, :cond_1

    .line 78
    .line 79
    const/16 v16, 0x3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/16 v16, 0x5

    .line 83
    .line 84
    :goto_1
    or-int/lit8 v4, v16, 0x30

    .line 85
    .line 86
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    .line 88
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 89
    .line 90
    iget-object v4, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_7

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_3

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_3

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    move v4, v9

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    :goto_2
    move v4, v12

    .line 142
    :goto_3
    if-eqz v4, :cond_4

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {v15, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    goto :goto_4

    .line 153
    :cond_4
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v6, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    :goto_4
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    if-eqz v16, :cond_5

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v16

    .line 175
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 176
    .line 177
    .line 178
    move-result v16

    .line 179
    div-int/lit8 v16, v16, 0x2

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v16

    .line 186
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 187
    .line 188
    .line 189
    move-result v16

    .line 190
    :goto_5
    sub-int v16, v16, v4

    .line 191
    .line 192
    div-int/lit8 v16, v16, 0x2

    .line 193
    .line 194
    iget-object v4, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 195
    .line 196
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    sub-int v16, v16, v4

    .line 201
    .line 202
    if-gez v16, :cond_6

    .line 203
    .line 204
    move v3, v9

    .line 205
    goto :goto_8

    .line 206
    :cond_6
    move/from16 v3, v16

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_7
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    const v3, 0x7f071578

    .line 214
    .line 215
    .line 216
    invoke-static {v3, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-static {v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    sub-int/2addr v4, v3

    .line 229
    int-to-float v3, v4

    .line 230
    iget-object v4, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_8

    .line 237
    .line 238
    div-float/2addr v3, v13

    .line 239
    goto :goto_7

    .line 240
    :cond_8
    sget-boolean v4, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    .line 241
    .line 242
    if-eqz v4, :cond_9

    .line 243
    .line 244
    sget-object v4, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    sget v4, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_9
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v4}, Lcom/android/systemui/volume/util/ContextUtils;->isScreenWideMobileDevice(Landroid/content/Context;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_a

    .line 261
    .line 262
    sget-object v4, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    sget v4, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_WIDE_SCREEN_TOP_RATIO:F

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_a
    sget-object v4, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    sget v4, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->VERTICAL_PADDING_TOP_RATIO:F

    .line 276
    .line 277
    :goto_6
    mul-float/2addr v3, v4

    .line 278
    :goto_7
    iget-object v4, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 279
    .line 280
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    int-to-float v4, v4

    .line 285
    sub-float/2addr v3, v4

    .line 286
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    const v5, 0x7f07155d

    .line 291
    .line 292
    .line 293
    invoke-static {v5, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    int-to-float v4, v4

    .line 298
    sub-float/2addr v3, v4

    .line 299
    float-to-int v3, v3

    .line 300
    :goto_8
    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 301
    .line 302
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    invoke-virtual {v7, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 313
    .line 314
    :cond_b
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-eqz v3, :cond_d

    .line 323
    .line 324
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_c

    .line 333
    .line 334
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 335
    .line 336
    and-int/lit8 v0, v0, -0x9

    .line 337
    .line 338
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 339
    .line 340
    :cond_c
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 341
    .line 342
    .line 343
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 344
    .line 345
    :cond_d
    iget-object v0, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandWindow;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 352
    .line 353
    .line 354
    const v3, 0x7f0a0cfa

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Landroid/widget/Space;

    .line 362
    .line 363
    const v4, 0x7f0a0d05

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Landroid/view/ViewGroup;

    .line 371
    .line 372
    const v5, 0x7f0a0d03

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    check-cast v5, Landroid/widget/TextView;

    .line 380
    .line 381
    const v7, 0x7f0a0d04

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    check-cast v7, Landroid/widget/ImageView;

    .line 389
    .line 390
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    const v13, 0x7f06097f

    .line 395
    .line 396
    .line 397
    invoke-static {v13, v8}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    if-nez v8, :cond_f

    .line 409
    .line 410
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    if-nez v8, :cond_f

    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    if-eqz v8, :cond_e

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_e
    move v8, v9

    .line 424
    goto :goto_a

    .line 425
    :cond_f
    :goto_9
    move v8, v12

    .line 426
    :goto_a
    sget-object v13, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 427
    .line 428
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    if-eqz v8, :cond_10

    .line 432
    .line 433
    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 434
    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_10
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    :goto_b
    if-eqz v8, :cond_11

    .line 441
    .line 442
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    goto :goto_c

    .line 449
    :cond_11
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 453
    .line 454
    .line 455
    :goto_c
    if-eqz v8, :cond_17

    .line 456
    .line 457
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_12

    .line 462
    .line 463
    const v3, 0x7f131214

    .line 464
    .line 465
    .line 466
    goto :goto_d

    .line 467
    :cond_12
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_13

    .line 472
    .line 473
    const v3, 0x7f13122d

    .line 474
    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_13
    const v3, 0x7f131219

    .line 478
    .line 479
    .line 480
    :goto_d
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-nez v3, :cond_15

    .line 496
    .line 497
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-eqz v3, :cond_14

    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_14
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_17

    .line 509
    .line 510
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    const v5, 0x7f080808

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v5, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    .line 527
    .line 528
    new-instance v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$2;

    .line 529
    .line 530
    invoke-direct {v3, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    .line 535
    .line 536
    goto :goto_10

    .line 537
    :cond_15
    :goto_e
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    const v5, 0x7f080b06

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3, v5, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    if-eqz v3, :cond_16

    .line 560
    .line 561
    new-instance v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$1;

    .line 562
    .line 563
    invoke-direct {v3, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$updateStatusMsgArea$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 564
    .line 565
    .line 566
    goto :goto_f

    .line 567
    :cond_16
    move-object v3, v10

    .line 568
    :goto_f
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    .line 570
    .line 571
    :cond_17
    :goto_10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    invoke-static {v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    const v7, 0x7f07156b

    .line 592
    .line 593
    .line 594
    invoke-static {v7, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 595
    .line 596
    .line 597
    move-result v5

    .line 598
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    invoke-static {v7}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 603
    .line 604
    .line 605
    move-result v7

    .line 606
    if-eqz v7, :cond_18

    .line 607
    .line 608
    move v7, v4

    .line 609
    goto :goto_11

    .line 610
    :cond_18
    move v7, v3

    .line 611
    :goto_11
    if-le v7, v5, :cond_19

    .line 612
    .line 613
    move v5, v12

    .line 614
    goto :goto_12

    .line 615
    :cond_19
    move v5, v9

    .line 616
    :goto_12
    sget-boolean v7, Lcom/android/systemui/BasicRune;->VOLUME_FOLDABLE_WIDE_SCREEN_VOLUME_DIALOG:Z

    .line 617
    .line 618
    if-eqz v7, :cond_1a

    .line 619
    .line 620
    if-eqz v5, :cond_1a

    .line 621
    .line 622
    move v5, v12

    .line 623
    goto :goto_13

    .line 624
    :cond_1a
    move v5, v9

    .line 625
    :goto_13
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    .line 630
    .line 631
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    .line 632
    .line 633
    .line 634
    move-result v7

    .line 635
    if-eqz v7, :cond_1b

    .line 636
    .line 637
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    .line 642
    .line 643
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    if-eqz v7, :cond_1b

    .line 648
    .line 649
    move v7, v12

    .line 650
    goto :goto_14

    .line 651
    :cond_1b
    move v7, v9

    .line 652
    :goto_14
    iget-object v8, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 653
    .line 654
    if-nez v8, :cond_1c

    .line 655
    .line 656
    move-object v8, v10

    .line 657
    :cond_1c
    invoke-virtual {v8}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 658
    .line 659
    .line 660
    move-result v8

    .line 661
    if-nez v8, :cond_20

    .line 662
    .line 663
    if-nez v5, :cond_20

    .line 664
    .line 665
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 666
    .line 667
    .line 668
    move-result-object v8

    .line 669
    invoke-static {v8}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    if-eqz v8, :cond_1d

    .line 674
    .line 675
    if-nez v7, :cond_20

    .line 676
    .line 677
    :cond_1d
    sget-object v7, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    .line 678
    .line 679
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 691
    .line 692
    .line 693
    move-result-object v7

    .line 694
    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 695
    .line 696
    if-ne v7, v12, :cond_1e

    .line 697
    .line 698
    move v7, v12

    .line 699
    goto :goto_15

    .line 700
    :cond_1e
    move v7, v9

    .line 701
    :goto_15
    if-eqz v7, :cond_1f

    .line 702
    .line 703
    goto :goto_16

    .line 704
    :cond_1f
    move v7, v9

    .line 705
    goto :goto_17

    .line 706
    :cond_20
    :goto_16
    move v7, v12

    .line 707
    :goto_17
    if-eqz v7, :cond_21

    .line 708
    .line 709
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 710
    .line 711
    .line 712
    move-result-object v7

    .line 713
    const v8, 0x105025a

    .line 714
    .line 715
    .line 716
    invoke-static {v8, v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 717
    .line 718
    .line 719
    move-result v7

    .line 720
    add-int/2addr v4, v7

    .line 721
    :cond_21
    iget-object v7, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    .line 722
    .line 723
    if-nez v7, :cond_22

    .line 724
    .line 725
    move-object v7, v10

    .line 726
    :cond_22
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 727
    .line 728
    .line 729
    move-result-object v7

    .line 730
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 731
    .line 732
    .line 733
    move-result-object v8

    .line 734
    const v10, 0x7f07153c

    .line 735
    .line 736
    .line 737
    invoke-static {v10, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 742
    .line 743
    .line 744
    move-result-object v10

    .line 745
    const v12, 0x7f071565

    .line 746
    .line 747
    .line 748
    invoke-static {v12, v10}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 749
    .line 750
    .line 751
    move-result v10

    .line 752
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 753
    .line 754
    .line 755
    move-result-object v12

    .line 756
    invoke-static {v12}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 757
    .line 758
    .line 759
    move-result v12

    .line 760
    iget-object v9, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 761
    .line 762
    if-nez v9, :cond_23

    .line 763
    .line 764
    const/4 v9, 0x0

    .line 765
    :cond_23
    invoke-virtual {v9}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 766
    .line 767
    .line 768
    move-result v9

    .line 769
    sget-object v16, Lcom/android/systemui/volume/purefunction/VolumePanelLayout;->INSTANCE:Lcom/android/systemui/volume/purefunction/VolumePanelLayout;

    .line 770
    .line 771
    if-nez v9, :cond_26

    .line 772
    .line 773
    if-eqz v5, :cond_24

    .line 774
    .line 775
    goto :goto_19

    .line 776
    :cond_24
    if-eqz v12, :cond_25

    .line 777
    .line 778
    move v9, v4

    .line 779
    goto :goto_18

    .line 780
    :cond_25
    move v9, v3

    .line 781
    :goto_18
    mul-int/2addr v8, v14

    .line 782
    sub-int v10, v9, v8

    .line 783
    .line 784
    :cond_26
    :goto_19
    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 785
    .line 786
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 787
    .line 788
    .line 789
    move-result-object v8

    .line 790
    const v9, 0x7f07153b

    .line 791
    .line 792
    .line 793
    invoke-static {v9, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 794
    .line 795
    .line 796
    move-result v8

    .line 797
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 798
    .line 799
    .line 800
    move-result-object v9

    .line 801
    const v10, 0x7f07153d

    .line 802
    .line 803
    .line 804
    invoke-static {v10, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 805
    .line 806
    .line 807
    move-result v9

    .line 808
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 809
    .line 810
    .line 811
    move-result-object v10

    .line 812
    invoke-static {v6, v10}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 817
    .line 818
    .line 819
    move-result-object v10

    .line 820
    invoke-static {v15, v10}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 821
    .line 822
    .line 823
    move-result v10

    .line 824
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 825
    .line 826
    .line 827
    move-result v12

    .line 828
    if-nez v12, :cond_28

    .line 829
    .line 830
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 831
    .line 832
    .line 833
    move-result v12

    .line 834
    if-nez v12, :cond_28

    .line 835
    .line 836
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 837
    .line 838
    .line 839
    move-result v12

    .line 840
    if-eqz v12, :cond_27

    .line 841
    .line 842
    goto :goto_1a

    .line 843
    :cond_27
    const/4 v12, 0x0

    .line 844
    goto :goto_1b

    .line 845
    :cond_28
    :goto_1a
    const/4 v12, 0x1

    .line 846
    :goto_1b
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 847
    .line 848
    .line 849
    move-result-object v15

    .line 850
    invoke-static {v15}, Lcom/android/systemui/volume/util/ContextUtils;->isLandscape(Landroid/content/Context;)Z

    .line 851
    .line 852
    .line 853
    move-result v15

    .line 854
    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 855
    .line 856
    move/from16 p1, v6

    .line 857
    .line 858
    iget-object v6, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 859
    .line 860
    if-nez v6, :cond_29

    .line 861
    .line 862
    const/4 v6, 0x0

    .line 863
    :cond_29
    invoke-virtual {v6}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 864
    .line 865
    .line 866
    move-result v6

    .line 867
    if-nez v6, :cond_2c

    .line 868
    .line 869
    if-eqz v5, :cond_2c

    .line 870
    .line 871
    if-eqz v15, :cond_2c

    .line 872
    .line 873
    int-to-float v4, v4

    .line 874
    const/high16 v6, 0x40000000    # 2.0f

    .line 875
    .line 876
    div-float/2addr v4, v6

    .line 877
    if-eqz v12, :cond_2a

    .line 878
    .line 879
    move v6, v10

    .line 880
    goto :goto_1c

    .line 881
    :cond_2a
    move/from16 v6, p1

    .line 882
    .line 883
    :goto_1c
    int-to-float v6, v6

    .line 884
    sub-float/2addr v4, v6

    .line 885
    move/from16 p0, v10

    .line 886
    .line 887
    const/4 v6, 0x2

    .line 888
    int-to-float v10, v6

    .line 889
    div-float/2addr v4, v10

    .line 890
    const/4 v6, 0x0

    .line 891
    cmpg-float v10, v4, v6

    .line 892
    .line 893
    if-gez v10, :cond_2b

    .line 894
    .line 895
    const/4 v4, 0x0

    .line 896
    :cond_2b
    float-to-int v4, v4

    .line 897
    new-instance v6, Landroid/util/Pair;

    .line 898
    .line 899
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 900
    .line 901
    .line 902
    move-result-object v4

    .line 903
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    invoke-direct {v6, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 908
    .line 909
    .line 910
    goto :goto_20

    .line 911
    :cond_2c
    move/from16 p0, v10

    .line 912
    .line 913
    if-nez v6, :cond_30

    .line 914
    .line 915
    if-nez v5, :cond_30

    .line 916
    .line 917
    if-nez v15, :cond_2d

    .line 918
    .line 919
    goto :goto_1f

    .line 920
    :cond_2d
    if-eqz v12, :cond_2e

    .line 921
    .line 922
    move/from16 v6, p0

    .line 923
    .line 924
    goto :goto_1d

    .line 925
    :cond_2e
    move/from16 v6, p1

    .line 926
    .line 927
    :goto_1d
    sub-int/2addr v4, v6

    .line 928
    const/4 v6, 0x2

    .line 929
    div-int/2addr v4, v6

    .line 930
    if-le v4, v9, :cond_2f

    .line 931
    .line 932
    goto :goto_1e

    .line 933
    :cond_2f
    move v9, v4

    .line 934
    :goto_1e
    new-instance v6, Landroid/util/Pair;

    .line 935
    .line 936
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 937
    .line 938
    .line 939
    move-result-object v4

    .line 940
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 941
    .line 942
    .line 943
    move-result-object v9

    .line 944
    invoke-direct {v6, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 945
    .line 946
    .line 947
    goto :goto_20

    .line 948
    :cond_30
    :goto_1f
    new-instance v6, Landroid/util/Pair;

    .line 949
    .line 950
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 955
    .line 956
    .line 957
    move-result-object v9

    .line 958
    invoke-direct {v6, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    :goto_20
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast v4, Ljava/lang/Integer;

    .line 964
    .line 965
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v6, Ljava/lang/Integer;

    .line 968
    .line 969
    iget-object v9, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->systemConfig:Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 970
    .line 971
    if-nez v9, :cond_31

    .line 972
    .line 973
    const/4 v9, 0x0

    .line 974
    :cond_31
    invoke-virtual {v9}, Lcom/android/systemui/volume/config/SystemConfigImpl;->isTablet()Z

    .line 975
    .line 976
    .line 977
    move-result v9

    .line 978
    if-nez v15, :cond_34

    .line 979
    .line 980
    if-nez v5, :cond_34

    .line 981
    .line 982
    if-eqz v9, :cond_32

    .line 983
    .line 984
    goto :goto_21

    .line 985
    :cond_32
    sub-int/2addr v3, v14

    .line 986
    const/4 v5, 0x2

    .line 987
    div-int/2addr v3, v5

    .line 988
    if-le v3, v8, :cond_33

    .line 989
    .line 990
    goto :goto_21

    .line 991
    :cond_33
    move v8, v3

    .line 992
    :cond_34
    :goto_21
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 997
    .line 998
    .line 999
    move-result v4

    .line 1000
    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1001
    .line 1002
    .line 1003
    iget v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1004
    .line 1005
    const v4, 0x7f0a0cfd

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v4

    .line 1012
    check-cast v4, Landroid/view/ViewGroup;

    .line 1013
    .line 1014
    const v5, 0x7f0a0cfe

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v5

    .line 1021
    check-cast v5, Landroid/view/ViewGroup;

    .line 1022
    .line 1023
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v6

    .line 1027
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1028
    .line 1029
    if-eqz v12, :cond_35

    .line 1030
    .line 1031
    move/from16 v3, p0

    .line 1032
    .line 1033
    goto :goto_22

    .line 1034
    :cond_35
    move/from16 v3, p1

    .line 1035
    .line 1036
    :goto_22
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1037
    .line 1038
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 1043
    .line 1044
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    if-eqz v3, :cond_36

    .line 1049
    .line 1050
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    const v6, 0x7f081321

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    .line 1066
    .line 1067
    invoke-static {v5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 1068
    .line 1069
    .line 1070
    goto :goto_24

    .line 1071
    :cond_36
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 1072
    .line 1073
    if-nez v3, :cond_38

    .line 1074
    .line 1075
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 1076
    .line 1077
    if-eqz v3, :cond_37

    .line 1078
    .line 1079
    goto :goto_23

    .line 1080
    :cond_37
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v3

    .line 1084
    const v6, 0x7f08131e

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v3

    .line 1091
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 1098
    .line 1099
    .line 1100
    goto :goto_24

    .line 1101
    :cond_38
    :goto_23
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    const v6, 0x7f08131f

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v3

    .line 1112
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v3

    .line 1119
    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v3

    .line 1123
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    .line 1125
    .line 1126
    if-eqz v3, :cond_39

    .line 1127
    .line 1128
    invoke-static {v5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 1129
    .line 1130
    .line 1131
    goto :goto_24

    .line 1132
    :cond_39
    const/4 v3, 0x0

    .line 1133
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    .line 1135
    .line 1136
    :goto_24
    new-instance v3, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1;

    .line 1137
    .line 1138
    invoke-direct {v3, v0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1142
    .line 1143
    .line 1144
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    .line 1145
    .line 1146
    if-nez v3, :cond_3a

    .line 1147
    .line 1148
    const/4 v3, 0x0

    .line 1149
    :cond_3a
    sget-object v4, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$2;->INSTANCE:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$2;

    .line 1150
    .line 1151
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSetupWizardComplete()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v3

    .line 1158
    if-eqz v3, :cond_3d

    .line 1159
    .line 1160
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    .line 1161
    .line 1162
    if-nez v3, :cond_3b

    .line 1163
    .line 1164
    const/4 v3, 0x0

    .line 1165
    :cond_3b
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    const/4 v4, 0x0

    .line 1169
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    .line 1171
    .line 1172
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    .line 1173
    .line 1174
    if-nez v3, :cond_3c

    .line 1175
    .line 1176
    const/4 v3, 0x0

    .line 1177
    :cond_3c
    const/4 v4, 0x1

    .line 1178
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1179
    .line 1180
    .line 1181
    goto :goto_25

    .line 1182
    :cond_3d
    const/4 v4, 0x1

    .line 1183
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    .line 1184
    .line 1185
    if-nez v3, :cond_3e

    .line 1186
    .line 1187
    const/4 v3, 0x0

    .line 1188
    :cond_3e
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1189
    .line 1190
    .line 1191
    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 1192
    .line 1193
    .line 1194
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->settingButton:Landroid/widget/ImageButton;

    .line 1195
    .line 1196
    if-nez v3, :cond_3f

    .line 1197
    .line 1198
    const/4 v3, 0x0

    .line 1199
    :cond_3f
    const/4 v5, 0x0

    .line 1200
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1201
    .line 1202
    .line 1203
    :goto_25
    iget-object v3, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 1204
    .line 1205
    if-nez v3, :cond_40

    .line 1206
    .line 1207
    const/4 v3, 0x0

    .line 1208
    :cond_40
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    if-eqz v3, :cond_41

    .line 1213
    .line 1214
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v3

    .line 1218
    if-eqz v3, :cond_41

    .line 1219
    .line 1220
    const/4 v5, 0x0

    .line 1221
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1222
    .line 1223
    .line 1224
    const v5, 0x3f733333    # 0.95f

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1231
    .line 1232
    .line 1233
    :cond_41
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    .line 1234
    .line 1235
    .line 1236
    move-result v3

    .line 1237
    if-eqz v3, :cond_42

    .line 1238
    .line 1239
    if-eqz v2, :cond_42

    .line 1240
    .line 1241
    move v2, v4

    .line 1242
    goto :goto_26

    .line 1243
    :cond_42
    const/4 v2, 0x0

    .line 1244
    :goto_26
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionComponentEnabled()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v3

    .line 1248
    if-eqz v3, :cond_44

    .line 1249
    .line 1250
    if-nez v2, :cond_44

    .line 1251
    .line 1252
    iget-object v2, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    .line 1253
    .line 1254
    if-nez v2, :cond_43

    .line 1255
    .line 1256
    const/4 v2, 0x0

    .line 1257
    :cond_43
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    const/4 v3, 0x0

    .line 1261
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    .line 1265
    .line 1266
    .line 1267
    move-result v2

    .line 1268
    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->toggleLiveCaptionButton(Z)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_27

    .line 1272
    :cond_44
    iget-object v2, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    .line 1273
    .line 1274
    if-nez v2, :cond_45

    .line 1275
    .line 1276
    const/4 v2, 0x0

    .line 1277
    :cond_45
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    .line 1279
    .line 1280
    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 1281
    .line 1282
    .line 1283
    :goto_27
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 1284
    .line 1285
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    invoke-virtual {v2, v1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    if-eqz v2, :cond_48

    .line 1294
    .line 1295
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v3

    .line 1299
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1300
    .line 1301
    .line 1302
    move-result v3

    .line 1303
    if-lez v3, :cond_46

    .line 1304
    .line 1305
    move v9, v4

    .line 1306
    goto :goto_28

    .line 1307
    :cond_46
    const/4 v9, 0x0

    .line 1308
    :goto_28
    if-eqz v9, :cond_47

    .line 1309
    .line 1310
    goto :goto_29

    .line 1311
    :cond_47
    const/4 v2, 0x0

    .line 1312
    :goto_29
    if-eqz v2, :cond_48

    .line 1313
    .line 1314
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 1315
    .line 1316
    .line 1317
    move-result v2

    .line 1318
    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->updateVolumeTitle(I)V

    .line 1319
    .line 1320
    .line 1321
    :cond_48
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 1322
    .line 1323
    .line 1324
    move-result v1

    .line 1325
    if-eqz v1, :cond_4b

    .line 1326
    .line 1327
    iget-object v1, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 1328
    .line 1329
    if-nez v1, :cond_49

    .line 1330
    .line 1331
    const/4 v1, 0x0

    .line 1332
    :cond_49
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v1

    .line 1343
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1344
    .line 1345
    and-int/lit8 v2, v2, -0x9

    .line 1346
    .line 1347
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1348
    .line 1349
    iget-object v2, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 1350
    .line 1351
    if-nez v2, :cond_4a

    .line 1352
    .line 1353
    const/4 v2, 0x0

    .line 1354
    :cond_4a
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1362
    .line 1363
    .line 1364
    :cond_4b
    iget-object v0, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 1365
    .line 1366
    if-nez v0, :cond_4c

    .line 1367
    .line 1368
    const/4 v10, 0x0

    .line 1369
    goto :goto_2a

    .line 1370
    :cond_4c
    move-object v10, v0

    .line 1371
    :goto_2a
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 1372
    .line 1373
    .line 1374
    goto/16 :goto_34

    .line 1375
    .line 1376
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->isShowing()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v1

    .line 1380
    if-eqz v1, :cond_71

    .line 1381
    .line 1382
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 1383
    .line 1384
    .line 1385
    goto/16 :goto_34

    .line 1386
    .line 1387
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->isShowing()Z

    .line 1388
    .line 1389
    .line 1390
    move-result v2

    .line 1391
    if-eqz v2, :cond_71

    .line 1392
    .line 1393
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v1

    .line 1397
    if-nez v1, :cond_71

    .line 1398
    .line 1399
    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 1400
    .line 1401
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startDismissAnimation()V

    .line 1402
    .line 1403
    .line 1404
    goto/16 :goto_34

    .line 1405
    .line 1406
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v1

    .line 1410
    if-eqz v1, :cond_51

    .line 1411
    .line 1412
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v2

    .line 1416
    iget-object v3, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 1417
    .line 1418
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v3

    .line 1422
    check-cast v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 1423
    .line 1424
    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1425
    .line 1426
    invoke-static {v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 1427
    .line 1428
    .line 1429
    move-result v3

    .line 1430
    const/high16 v4, 0x40000

    .line 1431
    .line 1432
    if-eqz v3, :cond_4d

    .line 1433
    .line 1434
    const/16 v3, 0x7e5

    .line 1435
    .line 1436
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1437
    .line 1438
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 1439
    .line 1440
    .line 1441
    const/4 v3, 0x0

    .line 1442
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1443
    .line 1444
    goto :goto_2c

    .line 1445
    :cond_4d
    const/4 v3, 0x0

    .line 1446
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1447
    .line 1448
    iget-object v3, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 1449
    .line 1450
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v3

    .line 1454
    check-cast v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 1455
    .line 1456
    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1457
    .line 1458
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    .line 1459
    .line 1460
    .line 1461
    move-result v3

    .line 1462
    if-eqz v3, :cond_4e

    .line 1463
    .line 1464
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v3

    .line 1468
    const v5, 0x7f071557

    .line 1469
    .line 1470
    .line 1471
    invoke-static {v5, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 1472
    .line 1473
    .line 1474
    move-result v3

    .line 1475
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v5

    .line 1479
    const v6, 0x7f071551

    .line 1480
    .line 1481
    .line 1482
    invoke-static {v6, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 1483
    .line 1484
    .line 1485
    move-result v5

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getBaseHeight$1()I

    .line 1487
    .line 1488
    .line 1489
    move-result v6

    .line 1490
    invoke-virtual {v0, v6}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getSeekBarY(I)F

    .line 1491
    .line 1492
    .line 1493
    move-result v6

    .line 1494
    int-to-float v5, v5

    .line 1495
    sub-float/2addr v6, v5

    .line 1496
    int-to-float v3, v3

    .line 1497
    sub-float/2addr v6, v3

    .line 1498
    float-to-int v3, v6

    .line 1499
    goto :goto_2b

    .line 1500
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getBaseHeight$1()I

    .line 1501
    .line 1502
    .line 1503
    move-result v3

    .line 1504
    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->getSeekBarY(I)F

    .line 1505
    .line 1506
    .line 1507
    move-result v3

    .line 1508
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v5

    .line 1512
    const v6, 0x7f071576

    .line 1513
    .line 1514
    .line 1515
    invoke-static {v6, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 1516
    .line 1517
    .line 1518
    move-result v5

    .line 1519
    int-to-float v5, v5

    .line 1520
    sub-float/2addr v3, v5

    .line 1521
    float-to-int v3, v3

    .line 1522
    :goto_2b
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1523
    .line 1524
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1525
    .line 1526
    .line 1527
    move-result v3

    .line 1528
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1529
    .line 1530
    .line 1531
    const/16 v3, 0x7e4

    .line 1532
    .line 1533
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1534
    .line 1535
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 1536
    .line 1537
    .line 1538
    :goto_2c
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 1539
    .line 1540
    if-eqz v3, :cond_4f

    .line 1541
    .line 1542
    const/4 v6, 0x3

    .line 1543
    goto :goto_2d

    .line 1544
    :cond_4f
    const/4 v6, 0x5

    .line 1545
    :goto_2d
    or-int/lit8 v3, v6, 0x30

    .line 1546
    .line 1547
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1548
    .line 1549
    iget-object v3, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 1550
    .line 1551
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    .line 1552
    .line 1553
    .line 1554
    move-result v3

    .line 1555
    const/high16 v4, -0x80000000

    .line 1556
    .line 1557
    if-eqz v3, :cond_50

    .line 1558
    .line 1559
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 1560
    .line 1561
    .line 1562
    goto :goto_2e

    .line 1563
    :cond_50
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 1564
    .line 1565
    .line 1566
    :goto_2e
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1567
    .line 1568
    .line 1569
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1570
    .line 1571
    :cond_51
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 1572
    .line 1573
    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 1574
    .line 1575
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 1580
    .line 1581
    iget-object v0, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1582
    .line 1583
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    .line 1587
    .line 1588
    .line 1589
    move-result v2

    .line 1590
    iput-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isLockscreen:Z

    .line 1591
    .line 1592
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v2

    .line 1596
    iput-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    .line 1597
    .line 1598
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 1599
    .line 1600
    if-nez v2, :cond_52

    .line 1601
    .line 1602
    const/4 v2, 0x0

    .line 1603
    :cond_52
    iget-object v3, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 1604
    .line 1605
    if-nez v3, :cond_53

    .line 1606
    .line 1607
    const/4 v3, 0x0

    .line 1608
    :cond_53
    iget-object v3, v3, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    .line 1609
    .line 1610
    iget-object v2, v2, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 1611
    .line 1612
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v2

    .line 1616
    check-cast v2, Landroid/os/Handler;

    .line 1617
    .line 1618
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1619
    .line 1620
    .line 1621
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 1622
    .line 1623
    .line 1624
    move-result v2

    .line 1625
    const v3, 0x7f0a0cfb

    .line 1626
    .line 1627
    .line 1628
    const v4, 0x7f0a0d01

    .line 1629
    .line 1630
    .line 1631
    if-eqz v2, :cond_56

    .line 1632
    .line 1633
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 1634
    .line 1635
    if-nez v2, :cond_54

    .line 1636
    .line 1637
    const/4 v2, 0x0

    .line 1638
    :cond_54
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v2

    .line 1642
    check-cast v2, Landroid/view/ViewGroup;

    .line 1643
    .line 1644
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 1645
    .line 1646
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 1647
    .line 1648
    if-nez v2, :cond_55

    .line 1649
    .line 1650
    const/4 v2, 0x0

    .line 1651
    :cond_55
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v2

    .line 1655
    check-cast v2, Landroid/widget/ImageView;

    .line 1656
    .line 1657
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1658
    .line 1659
    goto :goto_2f

    .line 1660
    :cond_56
    iget-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    .line 1661
    .line 1662
    if-eqz v2, :cond_5a

    .line 1663
    .line 1664
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 1665
    .line 1666
    if-nez v2, :cond_57

    .line 1667
    .line 1668
    const/4 v2, 0x0

    .line 1669
    :cond_57
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v2

    .line 1673
    check-cast v2, Landroid/view/ViewGroup;

    .line 1674
    .line 1675
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 1676
    .line 1677
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 1678
    .line 1679
    if-nez v2, :cond_58

    .line 1680
    .line 1681
    const/4 v2, 0x0

    .line 1682
    :cond_58
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v2

    .line 1686
    check-cast v2, Landroid/widget/ImageView;

    .line 1687
    .line 1688
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1689
    .line 1690
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 1691
    .line 1692
    if-nez v2, :cond_59

    .line 1693
    .line 1694
    const/4 v2, 0x0

    .line 1695
    :cond_59
    const v3, 0x7f0a0cf8

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v2

    .line 1702
    check-cast v2, Landroid/widget/TextView;

    .line 1703
    .line 1704
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 1705
    .line 1706
    goto :goto_2f

    .line 1707
    :cond_5a
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 1708
    .line 1709
    if-nez v2, :cond_5b

    .line 1710
    .line 1711
    const/4 v2, 0x0

    .line 1712
    :cond_5b
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v2

    .line 1716
    check-cast v2, Landroid/view/ViewGroup;

    .line 1717
    .line 1718
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 1719
    .line 1720
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 1721
    .line 1722
    if-nez v2, :cond_5c

    .line 1723
    .line 1724
    const/4 v2, 0x0

    .line 1725
    :cond_5c
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    check-cast v2, Landroid/widget/ImageView;

    .line 1730
    .line 1731
    iput-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1732
    .line 1733
    :goto_2f
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 1734
    .line 1735
    .line 1736
    move-result v2

    .line 1737
    if-eqz v2, :cond_61

    .line 1738
    .line 1739
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 1740
    .line 1741
    if-nez v2, :cond_5d

    .line 1742
    .line 1743
    const/4 v2, 0x0

    .line 1744
    :cond_5d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v2

    .line 1748
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v3

    .line 1752
    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    .line 1753
    .line 1754
    .line 1755
    move-result v3

    .line 1756
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1757
    .line 1758
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v3

    .line 1762
    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 1763
    .line 1764
    .line 1765
    move-result v3

    .line 1766
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1767
    .line 1768
    iget-object v3, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 1769
    .line 1770
    if-nez v3, :cond_5e

    .line 1771
    .line 1772
    const/4 v3, 0x0

    .line 1773
    :cond_5e
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    .line 1775
    .line 1776
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 1777
    .line 1778
    if-nez v2, :cond_5f

    .line 1779
    .line 1780
    const/4 v2, 0x0

    .line 1781
    :cond_5f
    iget-object v3, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 1782
    .line 1783
    if-nez v3, :cond_60

    .line 1784
    .line 1785
    const/4 v3, 0x0

    .line 1786
    :cond_60
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v3

    .line 1790
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v3

    .line 1797
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1798
    .line 1799
    const/4 v4, 0x0

    .line 1800
    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1801
    .line 1802
    .line 1803
    goto :goto_30

    .line 1804
    :cond_61
    const/4 v4, 0x0

    .line 1805
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 1806
    .line 1807
    if-nez v2, :cond_62

    .line 1808
    .line 1809
    const/4 v2, 0x0

    .line 1810
    :cond_62
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1811
    .line 1812
    .line 1813
    :goto_30
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1814
    .line 1815
    .line 1816
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v2

    .line 1820
    if-eqz v2, :cond_65

    .line 1821
    .line 1822
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 1823
    .line 1824
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 1825
    .line 1826
    .line 1827
    move-result v3

    .line 1828
    invoke-virtual {v2, v0, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v2

    .line 1832
    if-eqz v2, :cond_63

    .line 1833
    .line 1834
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 1835
    .line 1836
    .line 1837
    move-result v2

    .line 1838
    iput v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->currentVolume:I

    .line 1839
    .line 1840
    :cond_63
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 1841
    .line 1842
    if-nez v2, :cond_64

    .line 1843
    .line 1844
    const/4 v2, 0x0

    .line 1845
    :cond_64
    invoke-virtual {v2}, Lcom/android/systemui/volume/util/VibratorWrapper;->vibrate()V

    .line 1846
    .line 1847
    .line 1848
    :cond_65
    iget-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    .line 1849
    .line 1850
    if-eqz v2, :cond_6b

    .line 1851
    .line 1852
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 1853
    .line 1854
    if-nez v2, :cond_66

    .line 1855
    .line 1856
    const/4 v2, 0x0

    .line 1857
    :cond_66
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v3

    .line 1861
    const v4, 0x7f13121c

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v3

    .line 1868
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1869
    .line 1870
    .line 1871
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 1872
    .line 1873
    if-nez v2, :cond_67

    .line 1874
    .line 1875
    const/4 v2, 0x0

    .line 1876
    :cond_67
    const v3, 0x7f0a0cf6

    .line 1877
    .line 1878
    .line 1879
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v2

    .line 1883
    check-cast v2, Landroid/view/ViewGroup;

    .line 1884
    .line 1885
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v3

    .line 1889
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 1890
    .line 1891
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 1892
    .line 1893
    .line 1894
    move-result v3

    .line 1895
    if-eqz v3, :cond_68

    .line 1896
    .line 1897
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v3

    .line 1901
    const v4, 0x7f081321

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v3

    .line 1908
    goto :goto_32

    .line 1909
    :cond_68
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 1910
    .line 1911
    if-nez v3, :cond_6a

    .line 1912
    .line 1913
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 1914
    .line 1915
    if-eqz v3, :cond_69

    .line 1916
    .line 1917
    goto :goto_31

    .line 1918
    :cond_69
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v3

    .line 1922
    const v4, 0x7f08131e

    .line 1923
    .line 1924
    .line 1925
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v3

    .line 1929
    goto :goto_32

    .line 1930
    :cond_6a
    :goto_31
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v3

    .line 1934
    const v4, 0x7f08131f

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v3

    .line 1941
    :goto_32
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1942
    .line 1943
    .line 1944
    :cond_6b
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1945
    .line 1946
    if-nez v2, :cond_6c

    .line 1947
    .line 1948
    const/4 v2, 0x0

    .line 1949
    :cond_6c
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v3

    .line 1953
    const v4, 0x7f130f64

    .line 1954
    .line 1955
    .line 1956
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v3

    .line 1960
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1961
    .line 1962
    .line 1963
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1964
    .line 1965
    if-nez v2, :cond_6d

    .line 1966
    .line 1967
    const/4 v2, 0x0

    .line 1968
    :cond_6d
    new-instance v3, Lcom/android/systemui/volume/view/standard/VolumePanelView$initExpandButton$1;

    .line 1969
    .line 1970
    invoke-direct {v3, v1}, Lcom/android/systemui/volume/view/standard/VolumePanelView$initExpandButton$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1974
    .line 1975
    .line 1976
    iget-object v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1977
    .line 1978
    if-nez v2, :cond_6e

    .line 1979
    .line 1980
    const/4 v2, 0x0

    .line 1981
    :cond_6e
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 1982
    .line 1983
    .line 1984
    move-result v3

    .line 1985
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1986
    .line 1987
    .line 1988
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1989
    .line 1990
    .line 1991
    iget-object v0, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 1992
    .line 1993
    if-nez v0, :cond_6f

    .line 1994
    .line 1995
    const/4 v0, 0x0

    .line 1996
    :cond_6f
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v0

    .line 2000
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v0

    .line 2007
    const/4 v2, 0x0

    .line 2008
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2009
    .line 2010
    .line 2011
    iget-object v0, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 2012
    .line 2013
    if-nez v0, :cond_70

    .line 2014
    .line 2015
    const/4 v10, 0x0

    .line 2016
    goto :goto_33

    .line 2017
    :cond_70
    move-object v10, v0

    .line 2018
    :goto_33
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 2019
    .line 2020
    .line 2021
    :cond_71
    :goto_34
    return-void

    .line 2022
    nop

    .line 2023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    const-string v0, "VolumePanelWindow"

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 7
    .line 8
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "onStop : panelState.isExpanded="

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "VolumePanelWindow"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    move-object v1, v2

    .line 47
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    move-object v3, v2

    .line 52
    :cond_1
    iget-object v3, v3, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOffRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 55
    .line 56
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    move-object v1, v2

    .line 80
    :cond_2
    iget-object v3, v1, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 85
    .line 86
    .line 87
    :cond_3
    iput-object v2, v1, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    move-object v1, v2

    .line 94
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-static {v1}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;->requestAODVolumePanel(Z)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, v0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    move-object v2, v0

    .line 107
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 111
    .line 112
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 127
    .line 128
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 133
    .line 134
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 135
    .line 136
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v1, 0x1

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 147
    .line 148
    .line 149
    :cond_7
    return-void
.end method
