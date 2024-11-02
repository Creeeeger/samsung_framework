.class public final synthetic Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 4
    .line 5
    iget-object v6, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 6
    .line 7
    iget-object v7, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 8
    .line 9
    move-object/from16 v5, p1

    .line 10
    .line 11
    check-cast v5, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 14
    .line 15
    iget v2, v5, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, v5, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    const/4 v4, 0x0

    .line 33
    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "Screenshot request: "

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "Screenshot"

    .line 51
    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget v0, v5, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    if-ne v0, v3, :cond_4

    .line 59
    .line 60
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 79
    .line 80
    const-string/jumbo v8, "window"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/view/WindowManager;

    .line 88
    .line 89
    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    .line 90
    .line 91
    const/4 v9, -0x1

    .line 92
    const/4 v10, -0x1

    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    const/16 v13, 0x7f4

    .line 96
    .line 97
    const v14, 0x5080500

    .line 98
    .line 99
    .line 100
    const/16 v16, -0x3

    .line 101
    .line 102
    move-object v8, v15

    .line 103
    move-object v4, v15

    .line 104
    move/from16 v15, v16

    .line 105
    .line 106
    invoke-direct/range {v8 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 107
    .line 108
    .line 109
    const/4 v8, 0x1

    .line 110
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    invoke-virtual {v4, v8}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 114
    .line 115
    .line 116
    const-string v8, "ScreenshotSelectorView"

    .line 117
    .line 118
    invoke-virtual {v4, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 122
    .line 123
    iget-object v8, v8, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 124
    .line 125
    if-eqz v8, :cond_2

    .line 126
    .line 127
    const/4 v9, 0x0

    .line 128
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    .line 130
    .line 131
    const/16 v9, 0x8

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    if-eqz v8, :cond_3

    .line 143
    .line 144
    const-string/jumbo v0, "setPartialScreenshotSelector semScreenshot view window token is not null"

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    :try_start_0
    iget-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 152
    .line 153
    invoke-interface {v3, v8, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    iget-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 157
    .line 158
    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotController$13;

    .line 159
    .line 160
    move-object v2, v9

    .line 161
    move-object v3, v0

    .line 162
    move-object v4, v1

    .line 163
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/screenshot/ScreenshotController$13;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Bundle;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 170
    .line 171
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$14;

    .line 172
    .line 173
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotController$14;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 180
    .line 181
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$15;

    .line 182
    .line 183
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotController$15;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string/jumbo v3, "setPartialScreenshotSelector "

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_4
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 211
    .line 212
    invoke-virtual {v0, v5, v7, v6}, Lcom/android/systemui/screenshot/ScreenshotController;->handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Ljava/util/function/Consumer;)V

    .line 213
    .line 214
    .line 215
    :goto_1
    return-void
.end method
