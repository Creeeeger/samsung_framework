.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 10

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
    const-class v2, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/16 v4, 0x7e4

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$store$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$store$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 60
    .line 61
    const-class v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    .line 70
    .line 71
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 76
    .line 77
    const-class v3, Lcom/android/systemui/basic/util/LogWrapper;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/android/systemui/basic/util/LogWrapper;

    .line 84
    .line 85
    iput-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 86
    .line 87
    const-class v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 94
    .line 95
    iput-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const/4 v6, 0x1

    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 105
    .line 106
    .line 107
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    const/4 v7, 0x2

    .line 117
    invoke-virtual {v3, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 118
    .line 119
    .line 120
    const v8, 0x10c0028

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v8}, Landroid/view/Window;->addFlags(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 131
    .line 132
    const/4 v4, -0x3

    .line 133
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 134
    .line 135
    const-string v4, "SubFullLayoutVolumePanelWindow"

    .line 136
    .line 137
    invoke-virtual {v8, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    const/4 v4, -0x2

    .line 141
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 142
    .line 143
    const/4 v4, -0x1

    .line 144
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    .line 146
    const/16 v9, 0x15

    .line 147
    .line 148
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    .line 150
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    const v9, 0x7f13121c

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iput-object v4, v8, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/android/systemui/volume/config/SystemConfigImpl;->getHasCutout()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    .line 171
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 172
    .line 173
    const v4, 0x4000400

    .line 174
    .line 175
    .line 176
    or-int/2addr v0, v4

    .line 177
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    .line 179
    iput v7, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 180
    .line 181
    :cond_0
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    const v0, 0x7f0d042e

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 188
    .line 189
    .line 190
    const v0, 0x7f0a0d07

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 200
    .line 201
    const-string v3, "SubFullLayoutVolumePanelView"

    .line 202
    .line 203
    const-string v4, "SubFullLayoutVolumePanelView: bind"

    .line 204
    .line 205
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iput-object p0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 209
    .line 210
    const-class v3, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 217
    .line 218
    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 219
    .line 220
    const-class v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 221
    .line 222
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 227
    .line 228
    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 229
    .line 230
    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iput-object v4, v3, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 237
    .line 238
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 239
    .line 240
    const-class v3, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 247
    .line 248
    const-class v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 249
    .line 250
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 255
    .line 256
    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 257
    .line 258
    new-instance v3, Lcom/android/systemui/volume/util/BlurEffect;

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-direct {v3, v4, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 265
    .line 266
    .line 267
    iput-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 274
    .line 275
    const-class p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 276
    .line 277
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 282
    .line 283
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 284
    .line 285
    const-class p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 286
    .line 287
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 292
    .line 293
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 294
    .line 295
    const-class p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 296
    .line 297
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 302
    .line 303
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 304
    .line 305
    const-class p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 306
    .line 307
    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 312
    .line 313
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 314
    .line 315
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 316
    .line 317
    if-nez p1, :cond_2

    .line 318
    .line 319
    move-object p1, v5

    .line 320
    :cond_2
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$1;

    .line 321
    .line 322
    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    .line 327
    .line 328
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 329
    .line 330
    if-nez p1, :cond_3

    .line 331
    .line 332
    move-object p1, v5

    .line 333
    :cond_3
    const v1, 0x7f0a0cf7

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Landroid/view/ViewGroup;

    .line 341
    .line 342
    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$2;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$2;

    .line 343
    .line 344
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 348
    .line 349
    if-nez p1, :cond_4

    .line 350
    .line 351
    move-object p1, v5

    .line 352
    :cond_4
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;

    .line 353
    .line 354
    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 361
    .line 362
    if-nez p1, :cond_5

    .line 363
    .line 364
    move-object p1, v5

    .line 365
    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$4;

    .line 377
    .line 378
    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$4;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 382
    .line 383
    .line 384
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 385
    .line 386
    if-nez p1, :cond_6

    .line 387
    .line 388
    move-object p1, v5

    .line 389
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 390
    .line 391
    if-nez v1, :cond_7

    .line 392
    .line 393
    move-object v1, v5

    .line 394
    :cond_7
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-static {v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 413
    .line 414
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 415
    .line 416
    if-nez p1, :cond_8

    .line 417
    .line 418
    move-object p1, v5

    .line 419
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 420
    .line 421
    if-nez v1, :cond_9

    .line 422
    .line 423
    move-object v1, v5

    .line 424
    :cond_9
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    invoke-static {v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 443
    .line 444
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 445
    .line 446
    if-nez p1, :cond_a

    .line 447
    .line 448
    move-object p1, v5

    .line 449
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 450
    .line 451
    if-nez v1, :cond_b

    .line 452
    .line 453
    move-object v1, v5

    .line 454
    :cond_b
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 469
    .line 470
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 471
    .line 472
    invoke-direct {p1, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 473
    .line 474
    .line 475
    new-instance v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyDownAnimation$1$1;

    .line 476
    .line 477
    invoke-direct {v3, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyDownAnimation$1$1;-><init>(Landroid/view/View;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 481
    .line 482
    .line 483
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 484
    .line 485
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 486
    .line 487
    .line 488
    const/high16 v3, 0x43fa0000    # 500.0f

    .line 489
    .line 490
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 491
    .line 492
    .line 493
    const/high16 v3, 0x3f800000    # 1.0f

    .line 494
    .line 495
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 496
    .line 497
    .line 498
    iput-object v1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 499
    .line 500
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 501
    .line 502
    iget-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 503
    .line 504
    if-nez p1, :cond_c

    .line 505
    .line 506
    move-object p1, v5

    .line 507
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 508
    .line 509
    if-nez v1, :cond_d

    .line 510
    .line 511
    goto :goto_0

    .line 512
    :cond_d
    move-object v5, v1

    .line 513
    :goto_0
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 528
    .line 529
    invoke-direct {p1, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 530
    .line 531
    .line 532
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyUpAnimation$1$1;

    .line 533
    .line 534
    invoke-direct {v2, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarKeyUpAnimation$1$1;-><init>(Landroid/view/View;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 538
    .line 539
    .line 540
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 541
    .line 542
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 543
    .line 544
    .line 545
    const/high16 v2, 0x43e10000    # 450.0f

    .line 546
    .line 547
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 551
    .line 552
    .line 553
    iput-object v1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 554
    .line 555
    iput-object p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 556
    .line 557
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    const v1, 0x7f0712a2

    .line 562
    .line 563
    .line 564
    invoke-static {v1, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    iput p1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->swipeDistance:F

    .line 569
    .line 570
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 571
    .line 572
    .line 573
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final observeStore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

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
    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 33
    .line 34
    iput-object v1, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 35
    .line 36
    iput-object p0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    .line 37
    .line 38
    return-void
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
    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow$WhenMappings;->$EnumSwitchMapping$0:[I

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
    const/4 v1, 0x0

    .line 16
    const v2, 0x7f08123d

    .line 17
    .line 18
    .line 19
    const v3, 0x7f08123b

    .line 20
    .line 21
    .line 22
    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_10

    .line 30
    .line 31
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startDismissAnimation()V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    .line 65
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    .line 68
    .line 69
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 76
    .line 77
    const v0, 0x7f0a0cfc

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .line 86
    const v7, 0x7f0a0d09

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->addRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a0cfa

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/Space;

    .line 108
    .line 109
    const v7, 0x7f0a0d05

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Landroid/view/ViewGroup;

    .line 117
    .line 118
    const v8, 0x7f0a0d03

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, Landroid/widget/TextView;

    .line 126
    .line 127
    const v9, 0x7f0a0d04

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Landroid/widget/ImageView;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const v11, 0x7f06097f

    .line 141
    .line 142
    .line 143
    invoke-static {v11, v10}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    const/4 v11, 0x1

    .line 155
    if-nez v10, :cond_2

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-nez v10, :cond_2

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-eqz v10, :cond_1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_1
    move v10, v5

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    :goto_0
    move v10, v11

    .line 173
    :goto_1
    sget-object v12, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 174
    .line 175
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    if-eqz v10, :cond_3

    .line 179
    .line 180
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :goto_2
    if-eqz v10, :cond_4

    .line 188
    .line 189
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v7}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    if-eqz v10, :cond_a

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    const v0, 0x7f131214

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    const v0, 0x7f13122d

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_6
    const v0, 0x7f131219

    .line 225
    .line 226
    .line 227
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_8

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_7

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_a

    .line 256
    .line 257
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const v8, 0x7f080808

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$2;

    .line 276
    .line 277
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const v8, 0x7f080b06

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_9

    .line 307
    .line 308
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;

    .line 309
    .line 310
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$updateStatusMsgArea$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 311
    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_9
    move-object v0, v6

    .line 315
    :goto_6
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    :cond_a
    :goto_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const v7, 0x7f071299

    .line 323
    .line 324
    .line 325
    invoke-static {v7, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    const v8, 0x7f07128d

    .line 334
    .line 335
    .line 336
    invoke-static {v8, v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    const v9, 0x7f07128e

    .line 345
    .line 346
    .line 347
    invoke-static {v9, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-nez v9, :cond_c

    .line 356
    .line 357
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-eqz v9, :cond_b

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_b
    move v11, v5

    .line 365
    :cond_c
    :goto_8
    const v9, 0x7f0a0cfd

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    check-cast v9, Landroid/view/ViewGroup;

    .line 373
    .line 374
    const v10, 0x7f0a0cfe

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    check-cast v10, Landroid/view/ViewGroup;

    .line 382
    .line 383
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 384
    .line 385
    .line 386
    move-result-object v13

    .line 387
    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 388
    .line 389
    if-eqz v11, :cond_d

    .line 390
    .line 391
    move v7, v8

    .line 392
    :cond_d
    iput v7, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 393
    .line 394
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    .line 396
    .line 397
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_e

    .line 408
    .line 409
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-static {v10}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v0}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    if-eqz v0, :cond_f

    .line 450
    .line 451
    invoke-static {v10}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_f
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    :goto_9
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$1;

    .line 459
    .line 460
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->contentsView:Landroid/view/ViewGroup;

    .line 467
    .line 468
    if-nez v0, :cond_10

    .line 469
    .line 470
    move-object v0, v6

    .line 471
    :cond_10
    sget-object v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$2;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$adjustTouchEventForOutsideTouch$2;

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    .line 475
    .line 476
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 477
    .line 478
    if-nez v0, :cond_11

    .line 479
    .line 480
    move-object v0, v6

    .line 481
    :cond_11
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 493
    .line 494
    .line 495
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 496
    .line 497
    if-nez v0, :cond_12

    .line 498
    .line 499
    move-object v0, v6

    .line 500
    :cond_12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    const v1, 0x3f733333    # 0.95f

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 515
    .line 516
    .line 517
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 518
    .line 519
    if-nez v0, :cond_13

    .line 520
    .line 521
    move-object v0, v6

    .line 522
    :cond_13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 534
    .line 535
    .line 536
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->liveCaptionButton:Landroid/widget/ImageButton;

    .line 537
    .line 538
    if-nez v0, :cond_14

    .line 539
    .line 540
    move-object v0, v6

    .line 541
    :cond_14
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 545
    .line 546
    .line 547
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 548
    .line 549
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    if-eqz v0, :cond_15

    .line 558
    .line 559
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->updateVolumeTitle(I)V

    .line 564
    .line 565
    .line 566
    :cond_15
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 567
    .line 568
    .line 569
    move-result p1

    .line 570
    if-eqz p1, :cond_17

    .line 571
    .line 572
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 573
    .line 574
    if-nez p1, :cond_16

    .line 575
    .line 576
    move-object p1, v6

    .line 577
    :cond_16
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    const/16 v0, 0x8

    .line 585
    .line 586
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 587
    .line 588
    .line 589
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 590
    .line 591
    if-nez p0, :cond_18

    .line 592
    .line 593
    goto :goto_a

    .line 594
    :cond_18
    move-object v6, p0

    .line 595
    :goto_a
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_10

    .line 599
    .line 600
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 601
    .line 602
    .line 603
    move-result p1

    .line 604
    if-eqz p1, :cond_38

    .line 605
    .line 606
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_10

    .line 610
    .line 611
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 612
    .line 613
    .line 614
    move-result p1

    .line 615
    if-eqz p1, :cond_38

    .line 616
    .line 617
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 618
    .line 619
    .line 620
    move-result p1

    .line 621
    if-eqz p1, :cond_38

    .line 622
    .line 623
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 624
    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startDismissAnimation()V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_10

    .line 629
    .line 630
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    if-eqz p1, :cond_1a

    .line 635
    .line 636
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    iget-object v7, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 641
    .line 642
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    .line 643
    .line 644
    .line 645
    move-result v7

    .line 646
    const/high16 v8, -0x80000000

    .line 647
    .line 648
    if-eqz v7, :cond_19

    .line 649
    .line 650
    invoke-virtual {v0, v8}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 651
    .line 652
    .line 653
    goto :goto_b

    .line 654
    :cond_19
    invoke-virtual {v0, v8}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    .line 655
    .line 656
    .line 657
    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 658
    .line 659
    .line 660
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 661
    .line 662
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 663
    .line 664
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

    .line 665
    .line 666
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object p0

    .line 670
    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 671
    .line 672
    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 673
    .line 674
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    iput-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isLockscreen:Z

    .line 682
    .line 683
    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    iput-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 688
    .line 689
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 690
    .line 691
    if-nez v0, :cond_1b

    .line 692
    .line 693
    move-object v0, v6

    .line 694
    :cond_1b
    iget-object v7, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 695
    .line 696
    if-nez v7, :cond_1c

    .line 697
    .line 698
    move-object v7, v6

    .line 699
    :cond_1c
    iget-object v7, v7, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateLimitOnRunnable:Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;

    .line 700
    .line 701
    iget-object v0, v0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 702
    .line 703
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    check-cast v0, Landroid/os/Handler;

    .line 708
    .line 709
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    .line 711
    .line 712
    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    const v7, 0x7f0a0cfb

    .line 717
    .line 718
    .line 719
    const v8, 0x7f0a0d01

    .line 720
    .line 721
    .line 722
    if-eqz v0, :cond_1f

    .line 723
    .line 724
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 725
    .line 726
    if-nez v0, :cond_1d

    .line 727
    .line 728
    move-object v0, v6

    .line 729
    :cond_1d
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    check-cast v0, Landroid/view/ViewGroup;

    .line 734
    .line 735
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 736
    .line 737
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 738
    .line 739
    if-nez v0, :cond_1e

    .line 740
    .line 741
    move-object v0, v6

    .line 742
    :cond_1e
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    check-cast v0, Landroid/widget/ImageView;

    .line 747
    .line 748
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 749
    .line 750
    goto :goto_c

    .line 751
    :cond_1f
    iget-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 752
    .line 753
    if-eqz v0, :cond_23

    .line 754
    .line 755
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 756
    .line 757
    if-nez v0, :cond_20

    .line 758
    .line 759
    move-object v0, v6

    .line 760
    :cond_20
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    check-cast v0, Landroid/view/ViewGroup;

    .line 765
    .line 766
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 767
    .line 768
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 769
    .line 770
    if-nez v0, :cond_21

    .line 771
    .line 772
    move-object v0, v6

    .line 773
    :cond_21
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    check-cast v0, Landroid/widget/ImageView;

    .line 778
    .line 779
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 780
    .line 781
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 782
    .line 783
    if-nez v0, :cond_22

    .line 784
    .line 785
    move-object v0, v6

    .line 786
    :cond_22
    const v7, 0x7f0a0cf8

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    check-cast v0, Landroid/widget/TextView;

    .line 794
    .line 795
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 796
    .line 797
    goto :goto_c

    .line 798
    :cond_23
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 799
    .line 800
    if-nez v0, :cond_24

    .line 801
    .line 802
    move-object v0, v6

    .line 803
    :cond_24
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    check-cast v0, Landroid/view/ViewGroup;

    .line 808
    .line 809
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 810
    .line 811
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 812
    .line 813
    if-nez v0, :cond_25

    .line 814
    .line 815
    move-object v0, v6

    .line 816
    :cond_25
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    check-cast v0, Landroid/widget/ImageView;

    .line 821
    .line 822
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 823
    .line 824
    :goto_c
    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    if-eqz v0, :cond_2a

    .line 829
    .line 830
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 831
    .line 832
    if-nez v0, :cond_26

    .line 833
    .line 834
    move-object v0, v6

    .line 835
    :cond_26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 840
    .line 841
    .line 842
    move-result-object v7

    .line 843
    invoke-static {v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    .line 844
    .line 845
    .line 846
    move-result v7

    .line 847
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 848
    .line 849
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 850
    .line 851
    .line 852
    move-result-object v7

    .line 853
    invoke-static {v7}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayHeight(Landroid/content/Context;)I

    .line 854
    .line 855
    .line 856
    move-result v7

    .line 857
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 858
    .line 859
    iget-object v7, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 860
    .line 861
    if-nez v7, :cond_27

    .line 862
    .line 863
    move-object v7, v6

    .line 864
    :cond_27
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    .line 866
    .line 867
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 868
    .line 869
    if-nez v0, :cond_28

    .line 870
    .line 871
    move-object v0, v6

    .line 872
    :cond_28
    iget-object v7, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 873
    .line 874
    if-nez v7, :cond_29

    .line 875
    .line 876
    move-object v7, v6

    .line 877
    :cond_29
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 878
    .line 879
    .line 880
    move-result-object v7

    .line 881
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 885
    .line 886
    .line 887
    move-result-object v7

    .line 888
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 889
    .line 890
    invoke-virtual {v0, v5, v7, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 891
    .line 892
    .line 893
    goto :goto_d

    .line 894
    :cond_2a
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 895
    .line 896
    if-nez v0, :cond_2b

    .line 897
    .line 898
    move-object v0, v6

    .line 899
    :cond_2b
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 900
    .line 901
    .line 902
    :goto_d
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 903
    .line 904
    .line 905
    invoke-static {p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    if-eqz v0, :cond_2e

    .line 910
    .line 911
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 912
    .line 913
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 914
    .line 915
    .line 916
    move-result v5

    .line 917
    invoke-virtual {v0, p0, v5}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    if-eqz v0, :cond_2c

    .line 922
    .line 923
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 924
    .line 925
    .line 926
    move-result v0

    .line 927
    iput v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->currentVolume:I

    .line 928
    .line 929
    :cond_2c
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 930
    .line 931
    if-nez v0, :cond_2d

    .line 932
    .line 933
    move-object v0, v6

    .line 934
    :cond_2d
    invoke-virtual {v0}, Lcom/android/systemui/volume/util/VibratorWrapper;->vibrate()V

    .line 935
    .line 936
    .line 937
    :cond_2e
    iget-boolean v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 938
    .line 939
    if-eqz v0, :cond_32

    .line 940
    .line 941
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 942
    .line 943
    if-nez v0, :cond_2f

    .line 944
    .line 945
    move-object v0, v6

    .line 946
    :cond_2f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    const v7, 0x7f13121c

    .line 951
    .line 952
    .line 953
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    .line 959
    .line 960
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 961
    .line 962
    if-nez v0, :cond_30

    .line 963
    .line 964
    move-object v0, v6

    .line 965
    :cond_30
    const v5, 0x7f0a0cf6

    .line 966
    .line 967
    .line 968
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    check-cast v0, Landroid/view/ViewGroup;

    .line 973
    .line 974
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    .line 979
    .line 980
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 981
    .line 982
    .line 983
    move-result v4

    .line 984
    if-eqz v4, :cond_31

    .line 985
    .line 986
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    goto :goto_e

    .line 995
    :cond_31
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    :goto_e
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    .line 1005
    .line 1006
    :cond_32
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1007
    .line 1008
    if-nez v0, :cond_33

    .line 1009
    .line 1010
    move-object v0, v6

    .line 1011
    :cond_33
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    const v3, 0x7f130f64

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1023
    .line 1024
    .line 1025
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1026
    .line 1027
    if-nez v0, :cond_34

    .line 1028
    .line 1029
    move-object v0, v6

    .line 1030
    :cond_34
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$initExpandButton$1;

    .line 1031
    .line 1032
    invoke-direct {v2, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$initExpandButton$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 1039
    .line 1040
    if-nez v0, :cond_35

    .line 1041
    .line 1042
    move-object v0, v6

    .line 1043
    :cond_35
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1051
    .line 1052
    .line 1053
    iget-object p0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 1054
    .line 1055
    if-nez p0, :cond_36

    .line 1056
    .line 1057
    move-object p0, v6

    .line 1058
    :cond_36
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1059
    .line 1060
    .line 1061
    move-result-object p0

    .line 1062
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1066
    .line 1067
    .line 1068
    move-result-object p0

    .line 1069
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1070
    .line 1071
    .line 1072
    iget-object p0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 1073
    .line 1074
    if-nez p0, :cond_37

    .line 1075
    .line 1076
    goto :goto_f

    .line 1077
    :cond_37
    move-object v6, p0

    .line 1078
    :goto_f
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1079
    .line 1080
    .line 1081
    :cond_38
    :goto_10
    return-void

    .line 1082
    nop

    .line 1083
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
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    const-string v0, "SubFullLayoutVolumePanelWindow"

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

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
    const-string v2, "SubFullLayoutVolumePanelWindow"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

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
    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

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
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

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
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

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
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

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
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->store$delegate:Lkotlin/Lazy;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;->storeInteractor$delegate:Lkotlin/Lazy;

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
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

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
