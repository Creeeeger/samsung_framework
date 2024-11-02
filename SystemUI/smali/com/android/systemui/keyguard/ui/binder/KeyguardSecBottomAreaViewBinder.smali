.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;
.super Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final bind(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;
    .locals 29

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    const v0, 0x7f0a0528

    .line 4
    .line 5
    .line 6
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v14

    .line 10
    const v0, 0x7f0a00c1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    const v0, 0x7f0a05b0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const v0, 0x7f0a08d7

    .line 25
    .line 26
    .line 27
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const v0, 0x7f0a0ac7

    .line 32
    .line 33
    .line 34
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v2, v0

    .line 39
    check-cast v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 40
    .line 41
    const v0, 0x7f0a03b8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v3, v0

    .line 49
    check-cast v3, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 50
    .line 51
    const v0, 0x7f0a0529

    .line 52
    .line 53
    .line 54
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a052a

    .line 61
    .line 62
    .line 63
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    const v0, 0x7f0a055c

    .line 70
    .line 71
    .line 72
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v10, v0

    .line 77
    check-cast v10, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 78
    .line 79
    const v0, 0x7f0a0c9e

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v11, v0

    .line 87
    check-cast v11, Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const v4, 0x7f070281

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 106
    .line 107
    .line 108
    move-result v17

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const v4, 0x7f070429

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 117
    .line 118
    .line 119
    move-result v18

    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    const/16 v20, 0x0

    .line 123
    .line 124
    const/16 v21, 0x0

    .line 125
    .line 126
    const/16 v22, 0x0

    .line 127
    .line 128
    const/16 v23, 0x0

    .line 129
    .line 130
    const/16 v24, 0x0

    .line 131
    .line 132
    const/16 v25, 0x0

    .line 133
    .line 134
    const/16 v26, 0x0

    .line 135
    .line 136
    const/16 v27, 0x3fc

    .line 137
    .line 138
    const/16 v28, 0x0

    .line 139
    .line 140
    move-object/from16 v16, v0

    .line 141
    .line 142
    invoke-direct/range {v16 .. v28}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(IIIIIILandroid/util/Size;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateShortcutPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateIndicationPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 152
    .line 153
    .line 154
    move-result-object v16

    .line 155
    new-instance v12, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1;

    .line 156
    .line 157
    const/16 v17, 0x0

    .line 158
    .line 159
    move-object v0, v12

    .line 160
    move-object/from16 v1, p1

    .line 161
    .line 162
    move-object/from16 v4, p0

    .line 163
    .line 164
    move-object v5, v15

    .line 165
    move-object v6, v14

    .line 166
    move-object/from16 v7, v16

    .line 167
    .line 168
    move-object/from16 v18, v15

    .line 169
    .line 170
    move-object v15, v12

    .line 171
    move-object/from16 v12, v17

    .line 172
    .line 173
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v13, v15}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    new-instance v7, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    .line 181
    .line 182
    move-object v0, v7

    .line 183
    move-object v1, v14

    .line 184
    move-object/from16 v2, v18

    .line 185
    .line 186
    move-object/from16 v3, v16

    .line 187
    .line 188
    move-object/from16 v5, p1

    .line 189
    .line 190
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;-><init>(Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lkotlinx/coroutines/DisposableHandle;)V

    .line 191
    .line 192
    .line 193
    return-object v7
.end method
