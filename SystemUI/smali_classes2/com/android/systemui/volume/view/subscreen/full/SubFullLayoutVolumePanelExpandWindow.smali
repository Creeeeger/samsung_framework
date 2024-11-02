.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final log:Lcom/android/systemui/basic/util/LogWrapper;

.field public final panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

.field public final store$delegate:Lkotlin/Lazy;

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public final volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    const-class v2, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x7e4

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 38
    .line 39
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$store$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$store$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$storeInteractor$2;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 60
    .line 61
    const-class v2, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/systemui/volume/config/VolumeConfigs;->systemConfig$delegate:Lkotlin/Lazy;

    .line 70
    .line 71
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/systemui/volume/config/SystemConfigImpl;

    .line 76
    .line 77
    const-class v5, Lcom/android/systemui/basic/util/LogWrapper;

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lcom/android/systemui/basic/util/LogWrapper;

    .line 84
    .line 85
    iput-object v6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const/4 v7, 0x1

    .line 92
    if-eqz v6, :cond_1

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    .line 96
    .line 97
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    const/4 v8, 0x2

    .line 107
    invoke-virtual {v6, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 108
    .line 109
    .line 110
    const v9, 0x10c0028

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v9}, Landroid/view/Window;->addFlags(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 121
    .line 122
    const/4 v3, -0x3

    .line 123
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 124
    .line 125
    const-string v3, "SubFullLayoutVolumePanelExpandWindow"

    .line 126
    .line 127
    invoke-virtual {v9, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    const/4 v3, -0x1

    .line 131
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 132
    .line 133
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    .line 135
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 136
    .line 137
    invoke-virtual {v6}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const v10, 0x7f13121c

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iput-object v3, v9, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/android/systemui/volume/config/SystemConfigImpl;->getHasCutout()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_0

    .line 155
    .line 156
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    .line 158
    const v3, 0x4000400

    .line 159
    .line 160
    .line 161
    or-int/2addr v2, v3

    .line 162
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    .line 164
    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 165
    .line 166
    :cond_0
    invoke-virtual {v6, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    const v2, 0x7f0d042c

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 173
    .line 174
    .line 175
    const v2, 0x7f0a0cfc

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 183
    .line 184
    iput-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 185
    .line 186
    iput-object p0, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 187
    .line 188
    const-class v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 195
    .line 196
    iput-object v3, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 197
    .line 198
    const-class v3, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 205
    .line 206
    iput-object v3, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 207
    .line 208
    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Lcom/android/systemui/basic/util/LogWrapper;

    .line 213
    .line 214
    iput-object v3, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 215
    .line 216
    const-class v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 217
    .line 218
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 223
    .line 224
    iput-object v1, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 225
    .line 226
    new-instance v1, Lcom/android/systemui/volume/util/BlurEffect;

    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-direct {v1, v3, p1}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 233
    .line 234
    .line 235
    iput-object v1, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 236
    .line 237
    iget-object p1, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 238
    .line 239
    iget-object v1, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 240
    .line 241
    if-nez v1, :cond_2

    .line 242
    .line 243
    move-object v1, v4

    .line 244
    :cond_2
    iput-object v1, p1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 245
    .line 246
    iget-object p1, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 247
    .line 248
    if-nez p1, :cond_3

    .line 249
    .line 250
    move-object p1, v4

    .line 251
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$1;

    .line 263
    .line 264
    invoke-direct {v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

    .line 271
    .line 272
    if-nez p1, :cond_4

    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_4
    move-object v4, p1

    .line 276
    :goto_0
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;

    .line 277
    .line 278
    invoke-direct {p1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$bind$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 294
    .line 295
    .line 296
    iget-object p0, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 299
    .line 300
    .line 301
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 13

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
    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow$WhenMappings;->$EnumSwitchMapping$0:[I

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
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

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
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->dialog:Landroid/app/Dialog;

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
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$startDismissAnimation$1;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$startDismissAnimation$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$startDismissAnimation$2;

    .line 103
    .line 104
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView$startDismissAnimation$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x2

    .line 111
    new-array v3, p0, [F

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/4 v5, 0x0

    .line 118
    aput v4, v3, v5

    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    const/4 v6, 0x0

    .line 122
    aput v6, v3, v4

    .line 123
    .line 124
    const-string v7, "alpha"

    .line 125
    .line 126
    invoke-static {v0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const-wide/16 v7, 0xc8

    .line 131
    .line 132
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    .line 135
    new-instance v9, Landroid/view/animation/PathInterpolator;

    .line 136
    .line 137
    const v10, 0x3ea8f5c3    # 0.33f

    .line 138
    .line 139
    .line 140
    const v11, 0x3f2b851f    # 0.67f

    .line 141
    .line 142
    .line 143
    const/high16 v12, 0x3f800000    # 1.0f

    .line 144
    .line 145
    invoke-direct {v9, v10, v6, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    .line 150
    .line 151
    new-instance v9, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;

    .line 152
    .line 153
    invoke-direct {v9, v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$alphaAnimator$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    .line 158
    .line 159
    new-array p0, p0, [F

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    aput v1, p0, v5

    .line 166
    .line 167
    const v1, 0x3f666666    # 0.9f

    .line 168
    .line 169
    .line 170
    aput v1, p0, v4

    .line 171
    .line 172
    const-string/jumbo v1, "scaleX"

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$scaleAnimator$1$1;

    .line 180
    .line 181
    invoke-direct {v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    .line 189
    .line 190
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 191
    .line 192
    invoke-direct {v0, v10, v6, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 199
    .line 200
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 201
    .line 202
    .line 203
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 208
    .line 209
    .line 210
    filled-new-array {p0}, [Landroid/animation/Animator;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 215
    .line 216
    .line 217
    new-instance p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$1$1;

    .line 218
    .line 219
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startHideVolumeExpandAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 226
    .line 227
    .line 228
    :cond_3
    :goto_1
    return-void

    .line 229
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
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    const-string v0, "SubFullLayoutVolumePanelExpandWindow"

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->store$delegate:Lkotlin/Lazy;

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
    const-string v2, "SubFullLayoutVolumePanelExpandWindow"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->panelView:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandView;->rowContainer:Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelExpandWindow;->storeInteractor$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 56
    .line 57
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 58
    .line 59
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
