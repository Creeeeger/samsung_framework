.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    move-object/from16 v9, p3

    .line 12
    .line 13
    const v5, 0x7f0a06a4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    move-object v6, v5

    .line 21
    check-cast v6, Landroid/view/ViewGroup;

    .line 22
    .line 23
    const v5, 0x7f0a04cf

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v16

    .line 30
    const v5, 0x7f0a06a5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v14, v5

    .line 38
    check-cast v14, Landroid/widget/ImageView;

    .line 39
    .line 40
    const v5, 0x7f0a06a7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object v15, v5

    .line 48
    check-cast v15, Landroid/widget/ImageView;

    .line 49
    .line 50
    const v5, 0x7f0a06b0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v11, v5

    .line 58
    check-cast v11, Landroid/widget/ImageView;

    .line 59
    .line 60
    const v5, 0x7f0a06ab

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/widget/ImageView;

    .line 68
    .line 69
    move-object v8, v5

    .line 70
    new-instance v7, Lcom/android/settingslib/graph/SignalDrawable;

    .line 71
    .line 72
    move-object v10, v7

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-direct {v7, v12}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const v7, 0x7f0a06a8

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    move-object v12, v7

    .line 88
    check-cast v12, Landroid/widget/ImageView;

    .line 89
    .line 90
    const v7, 0x7f0a06aa

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    move-object v13, v7

    .line 98
    check-cast v13, Landroid/widget/Space;

    .line 99
    .line 100
    const v7, 0x7f0a0ad1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 108
    .line 109
    move-object/from16 v22, v1

    .line 110
    .line 111
    const v1, 0x7f0a02ef

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object/from16 v19, v1

    .line 119
    .line 120
    check-cast v19, Landroid/widget/ImageView;

    .line 121
    .line 122
    const v1, 0x7f0a0cc6

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object/from16 v17, v1

    .line 130
    .line 131
    check-cast v17, Landroid/widget/ImageView;

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    const/4 v1, 0x2

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 146
    .line 147
    .line 148
    move-result-object v23

    .line 149
    move-object/from16 v5, v23

    .line 150
    .line 151
    iget v1, v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->defaultColor:I

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v18

    .line 157
    invoke-static/range {v18 .. v18}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 158
    .line 159
    .line 160
    move-result-object v24

    .line 161
    move-object/from16 v18, v24

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 168
    .line 169
    .line 170
    move-result-object v25

    .line 171
    move-object/from16 v20, v25

    .line 172
    .line 173
    new-instance v26, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 174
    .line 175
    move-object v1, v4

    .line 176
    move-object/from16 v4, v26

    .line 177
    .line 178
    invoke-direct/range {v26 .. v26}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1;

    .line 182
    .line 183
    move-object v0, v1

    .line 184
    const/16 v21, 0x0

    .line 185
    .line 186
    move-object/from16 v27, v1

    .line 187
    .line 188
    move-object/from16 v1, v22

    .line 189
    .line 190
    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/settingslib/graph/SignalDrawable;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v6, p0

    .line 194
    .line 195
    move-object/from16 v0, v27

    .line 196
    .line 197
    invoke-static {v6, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 198
    .line 199
    .line 200
    const-string v0, "Home"

    .line 201
    .line 202
    move-object/from16 v7, p1

    .line 203
    .line 204
    iget-object v1, v7, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->locationName:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    .line 212
    new-instance v8, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$2;

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    move-object v0, v8

    .line 216
    move-object/from16 v1, p2

    .line 217
    .line 218
    move-object/from16 v2, p0

    .line 219
    .line 220
    move-object/from16 v3, p1

    .line 221
    .line 222
    move-object/from16 v4, v26

    .line 223
    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v6, v8}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 228
    .line 229
    .line 230
    :cond_0
    new-instance v6, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;

    .line 231
    .line 232
    move-object v0, v6

    .line 233
    move-object/from16 v1, p1

    .line 234
    .line 235
    move-object/from16 v2, v23

    .line 236
    .line 237
    move-object/from16 v3, v24

    .line 238
    .line 239
    move-object/from16 v4, v25

    .line 240
    .line 241
    move-object/from16 v5, v26

    .line 242
    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconBinder$bind$3;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 244
    .line 245
    .line 246
    return-object v6
.end method
