.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder;-><init>()V

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

.method public static final bind(Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$3;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p0

    .line 6
    .line 7
    move-object/from16 v5, p1

    .line 8
    .line 9
    const v2, 0x7f0a0d4a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move-object v3, v2

    .line 17
    check-cast v3, Landroid/view/ViewGroup;

    .line 18
    .line 19
    const v2, 0x7f0a0d58

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/ImageView;

    .line 27
    .line 28
    move-object v7, v2

    .line 29
    const v4, 0x7f0a0ad1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 37
    .line 38
    const v8, 0x7f0a0d4f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    move-object v10, v8

    .line 46
    check-cast v10, Landroid/widget/ImageView;

    .line 47
    .line 48
    const v8, 0x7f0a0d53

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    move-object v11, v8

    .line 56
    check-cast v11, Landroid/widget/ImageView;

    .line 57
    .line 58
    const v8, 0x7f0a04cf

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    const v8, 0x7f0a0d42

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    const v8, 0x7f0a0d59

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    const v8, 0x7f0a0d41

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Landroid/widget/ImageView;

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 101
    .line 102
    .line 103
    move-result-object v17

    .line 104
    move-object/from16 v2, v17

    .line 105
    .line 106
    iget v12, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->defaultColor:I

    .line 107
    .line 108
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v18

    .line 116
    move-object/from16 v9, v18

    .line 117
    .line 118
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 123
    .line 124
    .line 125
    move-result-object v19

    .line 126
    move-object/from16 v12, v19

    .line 127
    .line 128
    move-object/from16 v20, v2

    .line 129
    .line 130
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 131
    .line 132
    move-object v1, v2

    .line 133
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 134
    .line 135
    .line 136
    move-object/from16 v21, v1

    .line 137
    .line 138
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1;

    .line 139
    .line 140
    move-object v0, v1

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    move-object/from16 v23, v1

    .line 144
    .line 145
    move-object/from16 v22, v2

    .line 146
    .line 147
    move-object/from16 v2, v20

    .line 148
    .line 149
    move-object/from16 v1, v21

    .line 150
    .line 151
    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 152
    .line 153
    .line 154
    move-object/from16 v1, p0

    .line 155
    .line 156
    move-object/from16 v0, v23

    .line 157
    .line 158
    invoke-static {v1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 159
    .line 160
    .line 161
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    .line 162
    .line 163
    move-object/from16 v2, p1

    .line 164
    .line 165
    iget-object v3, v2, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;->location:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    .line 166
    .line 167
    if-ne v3, v0, :cond_0

    .line 168
    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$2;

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    move-object/from16 v5, v22

    .line 173
    .line 174
    invoke-direct {v0, v5, v2, v3}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;Lkotlin/coroutines/Continuation;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_0
    move-object/from16 v5, v22

    .line 182
    .line 183
    :goto_0
    new-instance v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$3;

    .line 184
    .line 185
    move-object v0, v6

    .line 186
    move-object/from16 v1, p1

    .line 187
    .line 188
    move-object/from16 v2, v17

    .line 189
    .line 190
    move-object/from16 v3, v18

    .line 191
    .line 192
    move-object/from16 v4, v19

    .line 193
    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/binder/WifiViewBinder$bind$3;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 195
    .line 196
    .line 197
    return-object v6
.end method
